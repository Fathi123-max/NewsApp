import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'package:newsapp/controller/newscontroller.dart';
import 'package:newsapp/view/page.dart';

enum Country {
  ae,
  ar,
  at,
  au,
  be,
  bg,
  br,
  ca,
  ch,
  cn,
  co,
  cu,
  cz,
  de,
  eg,
  fr,
  gb,
  us
}

enum Catogry { entertainment, general, health, science, sports, technology }

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Country country = Country.eg;
    return GetBuilder(
        init: NewsController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                elevation: 20,
                actions: [
                  PopupMenuButton(
                    onSelected: (value) {
                      setState(() {
                        switch (value) {
                          case Country.ch:
                            {
                              controller.country = "?country=ch";
                            }
                            break;

                          case Country.eg:
                            controller.country = "?country=eg";
                            break;
                          case Country.de:
                            controller.country = "?country=de";
                            break;
                          case Country.fr:
                            controller.country = "?country=fr";
                            break;
                          case Country.us:
                            controller.country = "?country=us";

                            break;
                          default:
                        }
                      });
                    },
                    child: Text("Choose Country"),
                    itemBuilder: (context) {
                      return <PopupMenuItem>[
                        PopupMenuItem(child: Text("China"), value: Country.ch),
                        PopupMenuItem(child: Text("Egypt"), value: Country.eg),
                        PopupMenuItem(child: Text("Detuse"), value: Country.de),
                        PopupMenuItem(child: Text("France"), value: Country.fr),
                        PopupMenuItem(child: Text("USA"), value: Country.us),
                      ];
                    },
                  )
                ],
                title: Text("News",style: TextStyle(fontSize: 40),)),
            body: Center(
                child: IndexedStack(
              index: controller.selectedIndex.value,
              children: [
                FutureBuilder(
                  future: controller.getAll(
                      controller.country, controller.category),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                             onTap: () {
                               Get.to(NewsView(),arguments: [
                                 snapshot.data![index].urlToImage != null
                                     ? Image.network(
                                   snapshot.data![index].urlToImage
                                       .toString(),
                                   fit: BoxFit.scaleDown,
                                 )
                                     : Text("data"),
                                 Container(
                                   child: Column(
                                     children: [
                                       snapshot.data![index].title != null
                                           ? Text(
                                           snapshot.data![index].title
                                               .toString(),
                                           style: TextStyle(fontSize: 20))
                                           : Text(" "),
                                       snapshot.data![index].description !=
                                           null
                                           ? Text(snapshot
                                           .data![index].description
                                           .toString())
                                           : Text("no description ")
                                     ],
                                   ),
                                 )
                               ],);
                             },
                              child: Card(
                                child: Column(
                                  children: [
                                    snapshot.data![index].urlToImage != null
                                        ? Image.network(
                                            snapshot.data![index].urlToImage
                                                .toString(),
                                            fit: BoxFit.scaleDown,
                                          )
                                        : Text("data"),
                                    Container(
                                      child: Column(
                                        children: [
                                          snapshot.data![index].title != null
                                              ? Text(
                                                  snapshot.data![index].title
                                                      .toString(),
                                                  style: TextStyle(fontSize: 20))
                                              : Text(" "),
                                          snapshot.data![index].description !=
                                                  null
                                              ? Text(snapshot
                                                  .data![index].description
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
                ),
                FutureBuilder(
                  future: controller.getAll(
                      controller.country, controller.category),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Column(
                                children: [
                                  snapshot.data![index].urlToImage != null
                                      ? Image.network(
                                          snapshot.data![index].urlToImage
                                              .toString(),
                                          fit: BoxFit.scaleDown,
                                        )
                                      : Text("data"),
                                  Container(
                                    child: Column(
                                      children: [
                                        snapshot.data![index].title != null
                                            ? Text(
                                                snapshot.data![index].title
                                                    .toString(),
                                                style: TextStyle(
                                                  fontSize: 20,
                                                ),
                                              )
                                            : Text(" "),
                                        snapshot.data![index].description !=
                                                null
                                            ? Text(snapshot
                                                .data![index].description
                                                .toString())
                                            : Text(" ")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),
                FutureBuilder(
                  future: controller.getAll(
                      controller.country, controller.category),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Column(
                                children: [
                                  snapshot.data![index].urlToImage != null
                                      ? Image.network(
                                          snapshot.data![index].urlToImage
                                              .toString(),
                                          fit: BoxFit.scaleDown,
                                        )
                                      : Text("data"),
                                  Container(
                                    child: Column(
                                      children: [
                                        snapshot.data![index].title != null
                                            ? Text(
                                                snapshot.data![index].title
                                                    .toString(),
                                                style: TextStyle(
                                                  fontSize: 20,
                                                ),
                                              )
                                            : Text(" "),
                                        snapshot.data![index].description !=
                                                null
                                            ? Text(snapshot
                                                .data![index].description
                                                .toString())
                                            : Text(" ")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),
                FutureBuilder(
                  future: controller.getAll(
                      controller.country, controller.category),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Column(
                                children: [
                                  snapshot.data![index].urlToImage != null
                                      ? Image.network(
                                          snapshot.data![index].urlToImage
                                              .toString(),
                                          fit: BoxFit.scaleDown,
                                        )
                                      : Text("data"),
                                  Container(
                                    child: Column(
                                      children: [
                                        snapshot.data![index].title != null
                                            ? Text(
                                                snapshot.data![index].title
                                                    .toString(),
                                                style: TextStyle(
                                                  fontSize: 20,
                                                ),
                                              )
                                            : Text(" "),
                                        snapshot.data![index].description !=
                                                null
                                            ? Text(snapshot
                                                .data![index].description
                                                .toString())
                                            : Text(" ")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),
                FutureBuilder(
                  future: controller.getAll(
                      controller.country, controller.category),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Column(
                                children: [
                                  snapshot.data![index].urlToImage != null
                                      ? Image.network(
                                          snapshot.data![index].urlToImage
                                              .toString(),
                                          fit: BoxFit.scaleDown,
                                        )
                                      : Text("data"),
                                  Container(
                                    child: Column(
                                      children: [
                                        snapshot.data![index].title != null
                                            ? Text(
                                                snapshot.data![index].title
                                                    .toString(),
                                                style: TextStyle(
                                                  fontSize: 20,
                                                ),
                                              )
                                            : Text(" "),
                                        snapshot.data![index].description !=
                                                null
                                            ? Text(snapshot
                                                .data![index].description
                                                .toString())
                                            : Text(" ")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),
              ],
            )),
            bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: Colors.black.withOpacity(.1),
                    )
                  ],
                ),
                child: SafeArea(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 8),
                        child: CustomNavigationBar(
                          iconSize: 30.0,
                          selectedColor: Color(0xff040307),
                          strokeColor: Color(0x30040307),
                          unSelectedColor: Color(0xffacacac),
                          backgroundColor: Colors.white,
                          items: [
                            CustomNavigationBarItem(
                              icon: Icon(Icons.sports),
                              title: Text("Sports"),
                            ),
                            CustomNavigationBarItem(
                              icon: Icon(Icons.business),
                              title: Text("Business"),
                            ),
                            CustomNavigationBarItem(
                              icon: Icon(Icons.science),
                              title: Text("Science"),
                            ),
                            CustomNavigationBarItem(
                              icon: Icon(Icons.health_and_safety),
                              title: Text("Health"),
                            ),
                            CustomNavigationBarItem(
                              icon: Icon(Icons.phone_android),
                              title: Text("Technology"),
                            ),
                          ],
                          currentIndex: controller.selectedIndex.value,
                          onTap: (index) {
                            setState(() {
                              controller.selectedIndex.value = index;
                              switch (index) {
                                case 0:
                                  {
                                    controller.category = "&category=sports";
                                  }
                                  break;

                                case 1:
                                  controller.category = "&category=business";
                                  break;
                                case 2:
                                  controller.category = "&category=science";
                                  break;
                                case 3:
                                  controller.category = "&category=health";
                                  break;
                                case 4:
                                  controller.category = "&category=technology";

                                  break;
                                default:
                              }
                            });
                          },
                        )))),
          );
        });
  }
}
