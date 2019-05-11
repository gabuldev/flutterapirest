import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterapirest/src/pages/home/components/list_tile.dart';
import 'package:flutterapirest/src/plugin/dio/controllers/controller_post.dart';
import 'package:flutterapirest/src/plugin/dio/models/post_model.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  ControllerPost api;

  @override
  void initState() {
   api = ControllerPost(Dio());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<Post>>(
      future: api.getPost(),
      builder: (context, snapshot) {
        return snapshot.hasData ?  ListView.separated(
          itemCount: snapshot.data.length,
          itemBuilder: (context, index) => ListWidget(
                title: snapshot.data[index].title,
                subtitle: snapshot.data[index].body,
              ),
          separatorBuilder: (context, index) => Divider(),
        ) : Center(child: CircularProgressIndicator(),);
      },
    ),
    );
  }
}
