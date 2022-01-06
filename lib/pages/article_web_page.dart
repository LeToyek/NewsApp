import 'package:dicoding/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebPage extends StatelessWidget {
  static const routeName = '/article_web';

  final String url;

  const ArticleWebPage({required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffold(
        body: WebView(
          initialUrl: url,
        ),
      ),
    );
  }
}
