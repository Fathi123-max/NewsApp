import 'package:get/get.dart';

class Constants {
  static String baseUrl = "https://newsapi.org";
  static String method = "/v2/top-headlines";
  static String country = "?country=us";
  static String topic = "&category=business";
  static String userApi = "&apiKey=8fd9c37c86884467a2f461cb0d0c2167";

  geturl(country, topic) {
    return baseUrl + method + country + topic + userApi;
  }

  getdefurl(country, topic) {

    return baseUrl + method + country + topic + userApi;
  }
}
