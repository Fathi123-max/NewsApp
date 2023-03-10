import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/binding/newsbiniding.dart';
import 'package:newsapp/view/homepage.dart';

void main() {
  runApp(

    
    GetMaterialApp(
      
      initialBinding: NewsBinding(),
      theme: ThemeData(useMaterial3: true),
     home: HomePage(),
    )
 
  );
  
}


