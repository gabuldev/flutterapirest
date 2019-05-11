import 'package:flutter_test/flutter_test.dart';
import 'package:flutterapirest/src/plugin/http/controllers/controller_post.dart';
import 'package:flutterapirest/src/plugin/http/models/post_model.dart';
import 'package:http/http.dart' as http;

main() {

  //instanciar o HTTP CLIENT

  http.Client client = http.Client();
  ControllerPost controller = ControllerPost(client);

  test("Test chamada http posts", ()async{
    List<Post> list = await controller.getPost();
    expect(list[0].id, 1);


  });
  
  
}