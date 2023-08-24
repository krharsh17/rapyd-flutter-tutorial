import 'dart:io';
import 'package:dio/dio.dart';
import 'package:rapyd/meme_post/meme.dart';
import 'package:rapyd/meme_post/meme_post.dart';

class NetworkConnection {
  late final Dio dio;
  NetworkConnection([BaseOptions? options]) {
    dio = Dio(options);
    dio.options
      ..baseUrl = 'https://api.imgflip.com'
      ..connectTimeout = Duration(seconds: 30)
      ..receiveTimeout = Duration(seconds: 30);
  }

  // Or you can create dio instance and config it as follow:
  //  final dio = Dio(BaseOptions(
  //    baseUrl: "http://www.dtworkroom.com/doris/1/2.0.0/",
  //    connectTimeout: const Duration(seconds: 5),
  //    receiveTimeout: const Duration(seconds: 5),
  //    headers: {
  //      HttpHeaders.userAgentHeader: 'dio',
  //      'common-header': 'xx',
  //    },
  //  ));

  Future<List<Meme>> getMemePosts() async {
    try {
      Response response = await dio.get('/get_memes');
      return MemePost.fromJson(response.data).data.memes ??[];
    } on DioException catch (e) {
      print(e.message);
    } on SocketException catch (e) {
      print(e.message);
    } catch (e) {
      print(e.toString());
    }
    return [];
  }
}
