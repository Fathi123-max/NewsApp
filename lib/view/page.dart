import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_icons/line_icon.dart';
import 'package:newsapp/controller/newscontroller.dart';

class NewsView extends StatelessWidget {
  NewsView({Key? key}) : super(key: key);






  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: NewsController(),
      builder: (controller) {




        return    FutureBuilder(
          future: controller.getAll(
              controller.country, controller.category),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {

                      },
                      child: Card(
                        child: Column(
                          children: [
                            snapshot.data![Get.arguments].urlToImage != null
                                ? Image.network(
                              snapshot.data![Get.arguments].urlToImage
                                  .toString(),
                              fit: BoxFit.scaleDown,
                            )
                                : Text("data"),
                            Container(
                              child: Column(
                                children: [
                                  snapshot.data![Get.arguments].title != null
                                      ? Text(
                                      snapshot.data![Get.arguments].title
                                          .toString(),
                                      style:
                                      TextStyle(fontSize: 20))
                                      : Text(" "),
                                  snapshot.data![Get.arguments].description !=
                                      null
                                      ? Text(snapshot
                                      .data![Get.arguments].description
                                      .toString())
                                      : Text("no description ")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return CircularProgressIndicator();
            }
          },
        );
      },

    );
  }
}
