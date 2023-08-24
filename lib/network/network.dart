import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rapyd/museum_post/museum_post.dart';

class NetworkConnection {
  late final Dio dio;
  NetworkConnection([BaseOptions? options]) {
    dio = Dio(options);
    dio.options
      ..connectTimeout = Duration(seconds: 10)
      ..receiveTimeout = Duration(seconds: 10);
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

  Future<List<MuseumPost>> getMuseumPosts() async {
    try {
      Response response = await dio.get('path');
      return response.data.map((data) => MuseumPost.fromJson(data)).toList();
    } on DioException catch (e) {
      print(e.message);
    } on SocketException catch (e) {
      print(e.message);
    }
    return [];
  }
}
