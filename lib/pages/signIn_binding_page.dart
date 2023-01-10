import 'package:crud_firebase/pages/signIn_controller.dart';
import 'package:get/get.dart';

class SignInBinding implements Bindings {
  const SignInBinding();

  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}
