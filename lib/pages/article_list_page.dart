// ignore_for_file: override_on_non_overriding_member

import 'package:dicoding/data/api/api_service.dart';
import 'package:dicoding/data/model/articles.dart';
import 'package:dicoding/widgets/card_article.dart';
import 'package:flutter/material.dart';

class ArticleListPage extends StatefulWidget {
  const ArticleListPage({Key? key}) : super(key: key);

  @override
  _ArticleListPageState createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
  late Future<ArticlesResult> _article;

  @override
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
