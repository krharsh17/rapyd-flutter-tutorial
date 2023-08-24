import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:rapyd/museum_post/museum_post.dart';
import 'package:rapyd/network/network.dart';

class DetailView extends StatefulWidget {
  MuseumPost? post;
  String? search;
  DetailView({Key? key, this.post, this.search}) : super(key: key);

  static const String id = '/detail_page';

  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  List<MuseumPost> postsList = [];
  bool isLoading = true;
  int page = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('DETAIL PAGE IS CALLED');

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        setState(() {
          isLoading = true;
        });
        refresh();
      } else {
        setState(() {
          isLoading = false;
        });
      }
    });
  }

  // void _bottomSheet(BuildContext context, String url) {
  //   showModalBottomSheet(
  //       barrierColor: Colors.transparent,
  //       isScrollControlled: true,
  //       elevation: 5,
  //       context: context,
  //       builder: (context) => SizedBox(
  //           height: MediaQuery.of(context).size.height * 0.5,
  //           child: HomePageBottomSheet(url: url)
  //       )
  //   );
  // }

  Future refresh() async {
    if (kDebugMode) {
      print('**** REFRESHING (Detail Page) ****');
    }
    if (postsList.isEmpty) {
      setState(() {
        page = 1;
      });
      postsList = await NetworkConnection().getMuseumPosts();
    } else {
      setState(() {
        page += 1;
      });
      postsList.addAll(await NetworkConnection().getMuseumPosts());
    }
    setState(() {
      isLoading = false;
    });
  }

  Color getColorFromHex(String hexColor) {
    hexColor = hexColor.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "ff" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return widget.post == null
        ? const SizedBox()
        : Scaffold(
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.black,
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_sharp,
                    size: 26, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: ListView(
              controller: _scrollController,
              padding: const EdgeInsets.all(0),
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Stack(
                        children: [
                          // Image(image: NetworkImage(widget.post.urls.regular))
                          InteractiveViewer(
                            minScale: 0.5,
                            maxScale: 3,
                            child: CachedNetworkImage(
                              imageUrl: widget.post!.primaryImage!,
                              placeholder: (context, url) => AspectRatio(
                                  aspectRatio:
                                      widget.post!.measurements!.first.elementMeasurements!.width! / widget.post!.measurements!.first.elementMeasurements!.height!,
                                  child: Container(
                                    color: Colors.indigo,
                                  )),
                              errorWidget: (context, url, error) => const Image(
                                  image: AssetImage('assets/cash/img_1.png')),
                              fit: BoxFit.cover,
                            ),
                          ),

                          Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, right: 5),
                                child: IconButton(
                                  icon: const Icon(Icons.more_horiz,
                                      size: 36, color: Colors.white),
                                  onPressed: () {},
                                ),
                              ))
                        ],
                      ),
                    ),
                    ListTile(
                      tileColor: Colors.white,
                      
                      title: Text(
                        widget.post!.artistDisplayName!,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 18),
                      ),
                      subtitle: Text(
                        '${widget.post!.artistNationality}',
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                     
                    ),
                    Flexible(
                                child: Container(
                                  color: Colors.white,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Text(
                                    widget.post!.title!,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                         Flexible(
                            child: Container(
                              color: Colors.white,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Text(
                                widget.post!.objectName ?? '',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ),
                    Container(
                      height: 70,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      child: ListTile(
                        leading: IconButton(
                          icon: const Icon(CupertinoIcons.chat_bubble_fill,
                              color: Colors.black, size: 26),
                          onPressed: () {},
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              height: 40,
                              child: const Text('View',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16.5)),
                              color: Colors.grey.shade400,
                              onPressed: () {},
                            ),
                            const SizedBox(width: 10),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              height: 40,
                              child: const Text('Save',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16.5)),
                              color: Colors.deepOrange.shade500,
                              onPressed: () {},
                            ),
                          ],
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.share,
                              size: 26, color: Colors.grey),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                Container(
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 5),
                      const Text(
                        'Share your feedback',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      const SizedBox(height: 20),
                      ListTile(
                        tileColor: Colors.white,
                        leading: SizedBox(
                          height: 40,
                          width: 40,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: const Image(
                                  image: AssetImage(
                                      'assets/local/profile_image.png'))),
                        ),
                        title: TextField(
                          controller: _controller,
                          decoration:
                              const InputDecoration(hintText: 'Add a comment'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 3),
                Container(
                  height: 55,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      SizedBox(height: 5),
                      Center(
                        child: Text(
                          'More like this',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 0.0),
                        child: MasonryGridView.count(
                          padding: const EdgeInsets.all(0),
                          physics: const NeverScrollableScrollPhysics(),
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
                      isLoading
                          ? Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 10),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  child: const CircularProgressIndicator(
                                      color: Colors.black),
                                ),
                              ),
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                )
              ],
            ),
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
                    imageUrl: postsList[index].primaryImage!,
                    placeholder: (context, url) => AspectRatio(
                        aspectRatio:
                                      widget.post!.measurements!.first.elementMeasurements!.width! / widget.post!.measurements!.first.elementMeasurements!.height!,
                        child: Container(
                          color: Colors.indigo,
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
                      icon: const Icon(Icons.more_horiz),
                      onPressed: () {
                        // _bottomSheet(context, widget.post!.urls.regular);
                      }),
                ],
              )
            ],
          )),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) =>
                DetailView(post: postsList[index], search: widget.search)));
      },
    );
  }
}
