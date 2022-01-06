import 'package:dicoding/object/articles.dart';
import 'package:dicoding/pages/article_web_page.dart';
import 'package:flutter/material.dart';

class ArticleDetailPage extends StatelessWidget {
  static const routeName = '/article_detail';
  final Article article;

  ArticleDetailPage({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Hero(
              tag: article.urlToImage,
              child: Image.network(article.urlToImage)),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(article.description),
                Divider(
                  color: Colors.grey,
                ),
                Text(
                  article.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Text('Date: ${article.publishedAt}'),
                SizedBox(
                  height: 8,
                ),
                Text('Author: ${article.author}'),
                Divider(
                  color: Colors.grey,
                ),
                Text(
                  article.content,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ArticleWebPage.routeName,
                          arguments: article.url);
                    },
                    child: Text('Read More'))

                //app
              ],
            ),
          )
        ],
      )),
    );
  }
}
