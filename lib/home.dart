import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rapyd/models/app_models.dart';
import 'package:rapyd/network/network_connection.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Meme> memeList = [];
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final ScrollController _scrollController = ScrollController();
  int page = 1;

  void _bottomSheet(BuildContext context) {
    showModalBottomSheet(
      barrierColor: Colors.transparent,
      isScrollControlled: true,
      elevation: 5,
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "To Continue Enjoying More Memes, Please Subscribe for a Plan.",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.subscriptions_rounded),
                label: const Text('Subscribe To Mewery')),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    refresh();
  }

  Future refresh() async {
    // If the user has seen more than 50 memes, prompt for a subscription
    if (memeList.length > 50) {
      _bottomSheet(context);
    } else {
      List<Meme> list = await NetworkConnection().getMemePosts();
      if (mounted) {
        setState(() {
          page += 1;
          memeList = list;
        });
      }
    }
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: memeList.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SmartRefresher(
              controller: _refreshController,
              enablePullUp: true,
              header: const ClassicHeader(),
              onRefresh: refresh,
              onLoading: () async {
                // If the user has seen more than 50 memes, prompt for a subscription
                if (memeList.length > 50) {
                  _bottomSheet(context);
                } else {
                  page += 1;
                  List<Meme> list = await NetworkConnection().getMemePosts();
                  memeList.addAll(list);
                  if (mounted) {
                    setState(() {
                      _refreshController.loadComplete();
                    });
                  }
                }
              },
              child: MasonryGridView.count(
                controller: _scrollController,
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: memeList.length,
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                itemBuilder: (context, index) {
                  return CachedNetworkImage(
                    imageUrl: memeList[index].url,
                    placeholder: (context, url) => AspectRatio(
                        aspectRatio:
                            memeList[index].width / memeList[index].height,
                        child: Container(
                          color: Colors.grey[200],
                        )),
                    errorWidget: (context, url, error) => AspectRatio(
                        aspectRatio:
                            memeList[index].width / memeList[index].height,
                        child: const Icon(Icons.error)),
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
    );
  }
}
