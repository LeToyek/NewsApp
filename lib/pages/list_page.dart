import 'package:dicoding/data/api/api_service.dart';
import 'package:dicoding/data/model/articles.dart';
import 'package:dicoding/pages/detail_page.dart';
import 'package:dicoding/widgets/card_article.dart';
import 'package:flutter/material.dart';

class NewListPage extends StatefulWidget {
  static const routeName = '/article_list';

  @override
  State<NewListPage> createState() => _NewListPageState();
}

class _NewListPageState extends State<NewListPage> {
  late Future<ArticlesResult> _article;
  void initState() {
    // TODO: implement initState
    super.initState();
    _article = ApiService().topHeadLines();
  }

  @override
  Widget _buildList(BuildContext context) {
    return FutureBuilder(
      future: _article,
      builder: (context, AsyncSnapshot<ArticlesResult> snapshot) {
        var state = snapshot.connectionState;
        if (state != ConnectionState.done) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          if (snapshot.hasData) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data?.articles.length,
                itemBuilder: (context, index) {
                  var article = snapshot.data?.articles[index];
                  return CardArticle(article: article!);
                });
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return Text('');
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('NewsApp'),
        ),
        body: _buildList(context));
  }
}
