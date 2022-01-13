// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:dicoding/data/model/articles.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static final String _baseUrl = 'https://newsapi.org/v2/';
  static final String _apiKey = '5bd8c08ddd55486097830e9d76ff5c57';
  static final String _category = 'business';
  static final String _country = 'id';

  Future<ArticlesResult> topHeadLines() async {
    final response = await http.get(Uri.parse(_baseUrl +
        "top-headlines?country=$_country&category=$_category&apiKey=$_apiKey"));
    if (response.statusCode == 200) {
      return ArticlesResult.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('failed to load top headlines');
    }
  }
}
