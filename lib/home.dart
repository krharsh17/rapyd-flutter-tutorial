import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rapyd/detail_view.dart';
import 'package:rapyd/museum_post/museum_post.dart';
import 'package:rapyd/network/network.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<HomeScreen> {
  List<MuseumPost> postsList = [];
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final ScrollController _scrollController = ScrollController();
  final Dio dio = Dio();
  int page = 1;
  bool downloadIsPressed = false;
  double progress = 0.0;

  void _bottomSheet(BuildContext context, String url) {
    showModalBottomSheet(
      barrierColor: Colors.transparent,
      isScrollControlled: true,
      elevation: 5,
      context: context,
      builder: (context) => _bottomSheetView(url),
    );
  }

  @override
  void initState() {
    super.initState();
    refresh();
  }

  Future refresh() async {
    if (kDebugMode) {
      print('**** REFRESHING ****    page: $page');
    }
    List<MuseumPost> list = await NetworkConnection().getMuseumPosts();
    if (mounted) {
      setState(() {
        page += 1;
        postsList = list;
        _refreshController.refreshCompleted();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: _refreshController,
      enablePullUp: true,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
            child: MasonryGridView.count(
              padding: const EdgeInsets.all(0),
              controller: _scrollController,
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: postsList.length,
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              itemBuilder: (context, index) {
                return _gridView(index);
              },
            ),
          ),
        ],
      ),
      header: const ClassicHeader(),
      onRefresh: refresh,
      onLoading: () async {
        if (kDebugMode) {
          print('**** LOADING ****');
        }
        page += 1;
        List<MuseumPost> list = await NetworkConnection().getMuseumPosts();
        postsList.addAll(list);
        if (mounted) {
          setState(() {
            _refreshController.loadComplete();
          });
        }
      },
    );
  }

  Widget _gridView(int index) {
    return GestureDetector(
      child: Card(
          elevation: 0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: postsList[index].primaryImageSmall!,
                    placeholder: (context, url) => AspectRatio(
                        aspectRatio: postsList[index]
                                .measurements!
                                .first
                                .elementMeasurements!
                                .width! /
                            postsList[index]
                                .measurements!
                                .first
                                .elementMeasurements!
                                .height!,
                        child: Container(
                          color: Colors.cyan,
                        )),
                    errorWidget: (context, url, error) =>
                        const Image(image: AssetImage('assets/cash/img_1.png')),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(postsList[index].artistDisplayName!,
                          overflow: TextOverflow.ellipsis)),
                  IconButton(
                      icon: const Icon(Icons.more_horiz), onPressed: () {}),
                ],
              )
            ],
          )),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext contex) =>
                DetailView(post: postsList[index])));
      },
      onLongPress: () {},
    );
  }

  Widget _bottomSheetView(String url) {
    return Container(
      height: MediaQuery.of(context).size.shortestSide > 600
          ? MediaQuery.of(context).size.height * 0.41
          : MediaQuery.of(context).size.height * 0.5,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Text('Share to')
            ],
          ),
          SizedBox(
            height: 80,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  child: Column(
                    children: const [
                      Expanded(
                        child: Image(
                          image: AssetImage(
                              'assets/icons/bottom_sheet_icons/img.png'),
                        ),
                      ),
                      SizedBox(height: 6),
                      Center(child: Text('Send'))
                    ],
                  ),
                  onTap: () {
                    if (kDebugMode) {
                      print('Telegram');
                    }
                  },
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  child: Column(
                    children: const [
                      Expanded(
                        child: Image(
                          image: AssetImage(
                              'assets/icons/bottom_sheet_icons/img_1.png'),
                        ),
                      ),
                      SizedBox(height: 6),
                      Center(child: Text('WhatsApp'))
                    ],
                  ),
                  onTap: () {
                    if (kDebugMode) {
                      print('WhatsApp');
                    }
                  },
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: const Image(
                            image: AssetImage(
                                'assets/icons/bottom_sheet_icons/img_6.png'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Center(child: const Text('Telegram'))
                    ],
                  ),
                  onTap: () {
                    if (kDebugMode) {
                      print('WhatsApp');
                    }
                  },
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  child: Column(
                    children: const [
                      Expanded(
                        child: Image(
                          image: AssetImage(
                              'assets/icons/bottom_sheet_icons/img_2.png'),
                        ),
                      ),
                      SizedBox(height: 6),
                      Center(child: Text('Messages'))
                    ],
                  ),
                  onTap: () {
                    if (kDebugMode) {
                      print('Messages');
                    }
                  },
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  child: Column(
                    children: const [
                      Expanded(
                        child: Image(
                          image: AssetImage(
                              'assets/icons/bottom_sheet_icons/img_3.png'),
                        ),
                      ),
                      SizedBox(height: 6),
                      Center(child: Text('Gmail'))
                    ],
                  ),
                  onTap: () {
                    if (kDebugMode) {
                      print('Gmail');
                    }
                  },
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  child: Column(
                    children: const [
                      Expanded(
                        child: Image(
                          image: AssetImage(
                              'assets/icons/bottom_sheet_icons/img_4.png'),
                        ),
                      ),
                      SizedBox(height: 6),
                      Center(child: Text('Copy link'))
                    ],
                  ),
                  onTap: () {
                    if (kDebugMode) {
                      print('Copy link');
                    }
                  },
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  child: Column(
                    children: const [
                      Expanded(
                        child: Image(
                          image: AssetImage(
                              'assets/icons/bottom_sheet_icons/img_5.png'),
                        ),
                      ),
                      SizedBox(height: 6),
                      Center(child: Text('More'))
                    ],
                  ),
                  onTap: () {
                    if (kDebugMode) {
                      print('More');
                    }
                  },
                ),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Download image',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 20)),
            onTap: () {
              setState(() {
                downloadIsPressed = true;
              });

              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Hide Pin'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Report Pin'),
            subtitle: const Text(
                'This goes against MuseumPost\'s community guidelines'),
            onTap: () {},
          ),
          const Divider(),
          const Text('This Pin is inspired by your recent activity',
              style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
