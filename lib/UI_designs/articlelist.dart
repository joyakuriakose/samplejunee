import 'package:flutter/material.dart';

class ArticleList extends StatefulWidget {
  @override
  _ArticleList createState() => _ArticleList();
}

class _ArticleList extends State<ArticleList> {
  List<Map> articles = [
    {'title': 'fyghbhbb', 'author': 'hgh', 'timeb': '4 min read'},
    {'title': 'fyghbhbb', 'author': 'hgh', 'timeb': '4 min read'},
    {'title': 'fyghbhbb', 'author': 'hgh', 'timeb': '4 min read'},
    {'title': 'fyghbhbb', 'author': 'hgh', 'timeb': '4 min read'},
    {'title': 'fyghbhbb', 'author': 'hgh', 'timeb': '4 min read'},
    {'title': 'fyghbhbb', 'author': 'hgh', 'timeb': '4 min read'},
    {'title': 'fyghbhbb', 'author': 'hgh', 'timeb': '4 min read'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Articles",
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
