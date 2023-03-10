import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/constant/constants.dart';
import 'package:newsapp/model/newsmdel.dart';
import 'package:newsapp/view/homepage.dart';

class NewsController extends GetxController {
  String category = "&category=business";

  String country = "?country=us";

  Country countryEnum = Country.eg;

  TextEditingController ttextcon = TextEditingController();

  RxInt selectedIndex = 0.obs;

  Dio dio = Dio();
  Constants constants = Constants();

  Future<List<Article>> getAll(String country, String category) async {
    var url = constants.geturl(country, category);
    var defurl = constants.getdefurl(country, category);
    var acurl = country.isEmpty ? await dio.get(defurl) : await dio.get(url);
print(acurl.statusCode);

    List<Article> articles = NewsModel.fromJson(acurl.data).articles;
    return articles;
  }
}

