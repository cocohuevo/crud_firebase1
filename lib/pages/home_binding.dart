import 'package:crud_firebase/pages/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  const HomeBinding();

  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
