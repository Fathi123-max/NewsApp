import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_icons/line_icon.dart';

class NewsView extends StatelessWidget {
  NewsView({Key? key}) : super(key: key);
var data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    print(data);
    return Scaffold(

      body: Container(
        child: ListView(
          children: data,
        ),
      ),
    );
  }
}
