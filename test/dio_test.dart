import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterapirest/src/plugin/dio/controllers/controller_post.dart';
import 'package:flutterapirest/src/plugin/dio/models/post_model.dart';



main() {

  //instanciar o HTTP CLIENT
  Dio dio = new Dio();
  ControllerPost controller = new ControllerPost(dio);

  test("Test chamada dio posts", ()async{
    List<Post> list = await controller.getPost();
    expect(list[0].id, 1);


  });
  
  
}