import 'package:dio/dio.dart';

import '../models/news_model.dart';


class NewsApiServices {
    static String _apiKey = "e5cf6fd8aeb4448c9e971828d11de09d";
   final String _url =
      "https://newsapi.org/v2/everything?q=tesla&from=2022-12-09&sortBy=publishedAt&apiKey";
 late Dio _dio;

  NewsApiServices() {
    _dio = Dio();
  }

  Future<List<Article?>?> fetchNewsArticle() async {
    
    try {
      Response response = await _dio.get(_url);
      print(response);
      newsapi news = newsapi.fromJson(response.data);
      return news.articles;
    } on DioError catch (e) {
      print(e);
      
    }
  }

  getNewsArticle() {}
}