import 'package:dio/dio.dart';
import 'package:flutterapirest/src/plugin/dio/config.dart';
import 'package:flutterapirest/src/plugin/dio/models/post_model.dart';
import 'package:flutterapirest/src/plugin/dio/models/response_model.dart';
import 'package:flutterapirest/src/plugin/dio/services/service_post.dart';

class ControllerPost{

  final Dio _dio;
  ServicePost _service;

  ControllerPost(this._dio){
    _dio.options.baseUrl = BASE_URL;
    _service = ServicePost(_dio);
  }


  Future<List<Post>> getPost() async {

    ResponseModel response = await _service.getPost();

    return (response.data as List).map((item) => Post.fromJson(item)).toList();

  }

}