
import 'dart:convert';

import 'package:flutterapirest/src/plugin/http/config.dart';
import 'package:http/http.dart' as http;
import 'package:flutterapirest/src/plugin/dio/models/response_model.dart';

class ServicePost{

   final http.Client _http;

  ServicePost(this._http);


  //GET POSTS

  Future<ResponseModel> getPost() async {

    ResponseModel response;

   final res = await  _http.get("$BASE_URL/posts");

    if(res.statusCode == 200 ){
      response = ResponseModel(
          data: jsonDecode(res.body),
          error: false,
          msgError: "",
          statusCode: 200
        );
    }
    else{
      response = ResponseModel(
          data: null,
          error: true,
          msgError: res.body,
          statusCode: res.statusCode
        );
    }

    return response;

  }




}