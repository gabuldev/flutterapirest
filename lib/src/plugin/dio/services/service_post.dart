

import 'package:dio/dio.dart';
import 'package:flutterapirest/src/plugin/dio/models/response_model.dart';

class ServicePost{

   final Dio _dio;

  ServicePost(this._dio);


  //GET POSTS

  Future<ResponseModel> getPost() async {

    ResponseModel response;

  try{
   var res = await _dio.get("/posts");

   response = ResponseModel(
          data: res.data,
          error: false,
          msgError: "",
          statusCode: res.statusCode
        );


  } on DioError catch (e){
      if(e != null){
          response = ResponseModel(
          data: null,
          error: true,
          msgError: e.request.data,
          statusCode: e.response.statusCode
        );
        }else{
             response = ResponseModel(
          data: null,
          error: true,
          msgError: e.message,
          statusCode: e.response.statusCode
        );
  }
  }
    return response;

  }




}