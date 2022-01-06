import 'package:dicoding/object/articles.dart';
import 'package:dicoding/pages/detail_page.dart';
import 'package:flutter/material.dart';

class NewListPage extends StatelessWidget {
  static const routeName = '/article_list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('NewsApp'),
      ),
      body: FutureBuilder<String>(
        future:
            DefaultAssetBundle.of(context).loadString('assets/articles.json'),
        builder: (context, snapshot) {
          final List<Article> articles = parseArticles(snapshot.data);
          return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return _buildArticleItem(context, articles[index]);
              });
        },
      ),
    );
  }

  Widget _buildArticleItem(BuildContext context, Article articl) {
    return ListTile(
      onTap: () => Navigator.pushNamed(context, ArticleDetailPage.routeName,
          arguments: articl),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: Hero(
        tag: articl.urlToImage,
        child: Image.network(
          articl.urlToImage,
          width: 100,
        ),
      ),
      title: Text(articl.title),
      subtitle: Text(articl.author),
    );
  }
}
