import 'package:crud_firebase/routes/route_names.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  AuthController();

  void onInit() {
    super.onInit();
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) Get.offAllNamed(RouteNames.signIn);
    });
  }

  User? get currentUser => FirebaseAuth.instance.currentUser;
}
