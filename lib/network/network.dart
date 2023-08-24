import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rapyd/models/meme_post/meme.dart';
import 'package:rapyd/models/meme_post/meme_post.dart';

class NetworkConnection {
  late final Dio dio;
  final baseOptions = BaseOptions(
    baseUrl: 'https://api.imgflip.com',
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  );
  NetworkConnection([BaseOptions? options]) {
    dio = Dio(options ?? baseOptions);
  }

  Future<List<Meme>> getMemePosts() async {
    try {
      Response response = await dio.get('/get_memes');
      return MemeData.fromJson(response.data).data.memes ?? [];
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
