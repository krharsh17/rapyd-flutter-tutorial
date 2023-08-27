import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rapyd/models/app_models.dart';

class NetworkConnection {
  final Dio dio = Dio(BaseOptions(
    baseUrl: 'https://api.imgflip.com',
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  ));

  NetworkConnection();

  Future<List<Meme>> getMemePosts() async {
    try {
      Response response = await dio.get('/get_memes');
      return MemeResponse.fromJson(response.data).data.memes;
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
