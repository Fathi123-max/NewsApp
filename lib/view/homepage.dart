import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:newsapp/binding/newsbiniding.dart';

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

final controller = Get.put(NewsController());

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Country country = Country.eg;
    return GetBuilder(
        init: NewsController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
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

                            default:
                          }
                        });
                      },
                      child: const Text("Choose Country"),
                      itemBuilder: (context) {
                        return <PopupMenuItem>[
                          const PopupMenuItem(
                              child: Text("China"), value: Country.ch),
                          const PopupMenuItem(
                              child: Text("Egypt"), value: Country.eg),
                          const PopupMenuItem(
                              child: Text("Detuse"), value: Country.de),
                          const PopupMenuItem(
                              child: Text("France"), value: Country.fr),

                        ];
                      },
                    )
                  ],
                  title: const Text(
                    "News",
                    style: TextStyle(fontSize: 40),
                  )),
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
                                  Get.to(
                                    NewsView(),
                                    arguments: index,
                                  );
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
                                          : const Text("data"),
                                      Container(
                                        child: Column(
                                          children: [
                                            snapshot.data![index].title != null
                                                ? Text(
                                                    snapshot.data![index].title
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 20))
                                                : const Text(" "),
                                            snapshot.data![index].description !=
                                                    null
                                                ? Text(snapshot
                                                    .data![index].description
                                                    .toString())
                                                : const Text("no description ")
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      } else {
                        return const CircularProgressIndicator();
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
                              return GestureDetector(
                                onTap: () {
                                  Get.to(
                                    NewsView(),
                                    arguments: [
                                      snapshot.data![index].urlToImage != null
                                          ? Image.network(
                                              snapshot.data![index].urlToImage
                                                  .toString(),
                                              fit: BoxFit.scaleDown,
                                            )
                                          : const Text("data"),
                                      Container(
                                        child: Column(
                                          children: [
                                            snapshot.data![index].title != null
                                                ? Text(
                                                    snapshot.data![index].title
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 20))
                                                : const Text(" "),
                                            snapshot.data![index].description !=
                                                    null
                                                ? Text(snapshot
                                                    .data![index].description
                                                    .toString())
                                                : const Text("no description ")
                                          ],
                                        ),
                                      )
                                    ],
                                  );
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
                                          : const Text("data"),
                                      Container(
                                        child: Column(
                                          children: [
                                            snapshot.data![index].title != null
                                                ? Text(
                                                    snapshot.data![index].title
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 20))
                                                : const Text(" "),
                                            snapshot.data![index].description !=
                                                    null
                                                ? Text(snapshot
                                                    .data![index].description
                                                    .toString())
                                                : const Text("no description ")
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      } else {
                        return const CircularProgressIndicator();
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
                              return GestureDetector(
                                onTap: () {
                                  Get.to(
                                    NewsView(),
                                    arguments: [
                                      snapshot.data![index].urlToImage != null
                                          ? Image.network(
                                              snapshot.data![index].urlToImage
                                                  .toString(),
                                              fit: BoxFit.scaleDown,
                                            )
                                          : const Text("data"),
                                      Container(
                                        child: Column(
                                          children: [
                                            snapshot.data![index].title != null
                                                ? Text(
                                                    snapshot.data![index].title
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 20))
                                                : const Text(" "),
                                            snapshot.data![index].description !=
                                                    null
                                                ? Text(snapshot
                                                    .data![index].description
                                                    .toString())
                                                : const Text("no description ")
                                          ],
                                        ),
                                      )
                                    ],
                                  );
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
                                          : const Text("data"),
                                      Container(
                                        child: Column(
                                          children: [
                                            snapshot.data![index].title != null
                                                ? Text(
                                                    snapshot.data![index].title
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 20))
                                                : const Text(" "),
                                            snapshot.data![index].description !=
                                                    null
                                                ? Text(snapshot
                                                    .data![index].description
                                                    .toString())
                                                : const Text("no description ")
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      } else {
                        return const CircularProgressIndicator();
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
                              return GestureDetector(
                                onTap: () {
                                  Get.to(
                                    NewsView(),
                                    arguments: [
                                      snapshot.data![index].urlToImage != null
                                          ? Image.network(
                                              snapshot.data![index].urlToImage
                                                  .toString(),
                                              fit: BoxFit.scaleDown,
                                            )
                                          : const Text("data"),
                                      Container(
                                        child: Column(
                                          children: [
                                            snapshot.data![index].title != null
                                                ? Text(
                                                    snapshot.data![index].title
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 20))
                                                : const Text(" "),
                                            snapshot.data![index].description !=
                                                    null
                                                ? Text(snapshot
                                                    .data![index].description
                                                    .toString())
                                                : const Text("no description ")
                                          ],
                                        ),
                                      )
                                    ],
                                  );
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
                                          : const Text("data"),
                                      Container(
                                        child: Column(
                                          children: [
                                            snapshot.data![index].title != null
                                                ? Text(
                                                    snapshot.data![index].title
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 20))
                                                : const Text(" "),
                                            snapshot.data![index].description !=
                                                    null
                                                ? Text(snapshot
                                                    .data![index].description
                                                    .toString())
                                                : const Text("no description ")
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      } else {
                        return const CircularProgressIndicator();
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
                              return GestureDetector(
                                onTap: () {
                                  Get.to(
                                    NewsView(),
                                    arguments: [
                                      snapshot.data![index].urlToImage != null
                                          ? Image.network(
                                              snapshot.data![index].urlToImage
                                                  .toString(),
                                              fit: BoxFit.scaleDown,
                                            )
                                          : const Text("data"),
                                      Container(
                                        child: Column(
                                          children: [
                                            snapshot.data![index].title != null
                                                ? Text(
                                                    snapshot.data![index].title
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 20))
                                                : const Text(" "),
                                            snapshot.data![index].description !=
                                                    null
                                                ? Text(snapshot
                                                    .data![index].description
                                                    .toString())
                                                : const Text("no description ")
                                          ],
                                        ),
                                      )
                                    ],
                                  );
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
                                          : const Text("data"),
                                      Container(
                                        child: Column(
                                          children: [
                                            snapshot.data![index].title != null
                                                ? Text(
                                                    snapshot.data![index].title
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 20))
                                                : const Text(" "),
                                            snapshot.data![index].description !=
                                                    null
                                                ? Text(snapshot
                                                    .data![index].description
                                                    .toString())
                                                : const Text("no description ")
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      } else {
                        return const CircularProgressIndicator();
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
                            selectedColor: const Color(0xff040307),
                            strokeColor: const Color(0x30040307),
                            unSelectedColor: const Color(0xffacacac),
                            backgroundColor: Colors.white,
                            items: [
                              CustomNavigationBarItem(
                                icon: const Icon(Icons.sports),
                                title: const Text("Sports"),
                              ),
                              CustomNavigationBarItem(
                                icon: const Icon(Icons.business),
                                title: const Text("Business"),
                              ),
                              CustomNavigationBarItem(
                                icon: const Icon(Icons.science),
                                title: const Text("Science"),
                              ),
                              CustomNavigationBarItem(
                                icon: const Icon(Icons.health_and_safety),
                                title: const Text("Health"),
                              ),
                              CustomNavigationBarItem(
                                icon: const Icon(Icons.phone_android),
                                title: const Text("Technology"),
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
                                    controller.category =
                                        "&category=technology";

                                    break;
                                  default:
                                }
                              });
                            },
                          )))),
            ),
          );
        });
  }
}
