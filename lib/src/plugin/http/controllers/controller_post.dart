
import 'package:flutterapirest/src/plugin/dio/models/response_model.dart';
import 'package:flutterapirest/src/plugin/http/models/post_model.dart';
import 'package:flutterapirest/src/plugin/http/services/service_post.dart';
import 'package:http/http.dart' as http;


class ControllerPost{

  final http.Client _http;
  ServicePost _service;

  ControllerPost(this._http){
    _service = ServicePost(_http);
  }


  Future<List<Post>> getPost() async {

    ResponseModel response = await _service.getPost();

    return (response.data as List).map((item) => Post.fromJson(item)).toList();

  }





}