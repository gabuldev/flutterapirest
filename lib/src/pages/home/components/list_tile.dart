import 'package:flutter/material.dart';


class ListWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const ListWidget({Key key, this.title, this.subtitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle)
    );
  }
}