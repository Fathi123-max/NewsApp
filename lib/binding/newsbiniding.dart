import 'package:get/get.dart';
import 'package:newsapp/controller/newscontroller.dart';

class NewsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(NewsController());
  }
}
