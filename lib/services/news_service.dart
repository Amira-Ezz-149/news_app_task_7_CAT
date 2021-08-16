/*
import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:news_app_task_7_cat/model/news.dart';
class NewsService {
  static String baseURL = "https://newsapi.org/v2/everything?q=";
  getNewsList(String query) async {
    var response = await http.get(Uri.parse(baseURL+query+"&apiKey=aa67cb9289bc4ffca7f51aa44f7ba2ea"));
    if(response.statusCode ==200){
      List<News> newsList ;
      var finalResult = json.decode(response.body);
      newsList  = (finalResult['articles'] as List).map((i) => News.fromJson(i)).toList();

      return newsList;
    }else{
      log('error occur');
    }
  }
}*/
import 'package:dio/dio.dart';
import 'package:news_app_task_7_cat/model/news.dart';
import 'dart:convert';

class NewsApiService{
  static String apiKey = '196cd3f9b33d4947b4c98512d4d51404';
  String url = 'https://newsapi.org/v2/everything?q=tesla&sortBy=publishedAt&apiKey=$apiKey';

  Future<List<News>> getNews() async{
    List<News> news = [];
    Response response = await Dio().get('$url');
    Map data = response.data;
    for(Map value in data["articles"]){
      news.add(News(data:value));
    }
    return news;
  }

}


//https://newsapi.org/v2/everything?q=tesla&from=2021-07-14&sortBy=publishedAt&apiKey=196cd3f9b33d4947b4c98512d4d51404