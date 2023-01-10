import 'package:crud_firebase/routes/route_names.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../data/firebase/auth_firebase.dart';
import 'ErrorSnackBar.dart';

class SignInController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void signIn() {
    Get.showOverlay(asyncFunction: () async {
      try {
        await const AuthFirebase().signInWithEmail(
          emailController.text.trim(),
          passwordController.text,
        );
        Get.offNamed(RouteNames.home);
      } on FirebaseException catch (e) {
        Get.showSnackbar(ErrorSnackbar(e.code));
      }
    });
  }
}
