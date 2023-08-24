import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rapyd/meme_post/meme.dart';
import 'package:rapyd/network/network.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<HomeScreen> {
  List<Meme> postsList = [];
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final ScrollController _scrollController = ScrollController();
  final Dio dio = Dio();
  int page = 1;
  bool downloadIsPressed = false;
  double progress = 0.0;

  void _bottomSheet(BuildContext context) {
    showModalBottomSheet(
      barrierColor: Colors.transparent,
      isScrollControlled: true,
      elevation: 5,
      context: context,
      builder: (context) => _bottomSheetView(),
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
    List<Meme> list = await NetworkConnection().getMemePosts();
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
      header: const ClassicHeader(),
      onRefresh: refresh,
      onLoading: () async {
        if (kDebugMode) {
          print('**** LOADING ****');
        }
        if (postsList.length > 50) {
          _bottomSheet(context);
        } else {
          page += 1;
          List<Meme> list = await NetworkConnection().getMemePosts();
          postsList.addAll(list);
          if (mounted) {
            setState(() {
              _refreshController.loadComplete();
            });
          }
        }
      },
      child: MasonryGridView.count(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
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
    );
  }

  Widget _gridView(int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: CachedNetworkImage(
        imageUrl: postsList[index].url!,
        placeholder: (context, url) => AspectRatio(
            aspectRatio: postsList[index].width! / postsList[index].height!,
            child: Container(
              color: Colors.cyan,
            )),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _bottomSheetView() {
    return Container(
      height: MediaQuery.of(context).size.shortestSide > 600
          ? MediaQuery.of(context).size.height * 0.41
          : MediaQuery.of(context).size.height * 0.5,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.subscriptions),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const Text('Subscribe To Mewery')
        ],
      ),
    );
  }
}
