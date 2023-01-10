import 'package:crud_firebase/pages/edit_name_page.dart';
import 'package:crud_firebase/pages/login_page.dart';
import 'package:crud_firebase/routes/route_names.dart';
import 'package:get/get.dart';

import '../pages/add_name_page.dart';
import '../pages/home_binding.dart';
import '../pages/home_page.dart';
import '../pages/signIn_binding_page.dart';
import '../pages/splash_binding_page.dart';
import '../pages/splash_page.dart';

class RoutePages {
  const RoutePages();
  static List<GetPage<dynamic>> get all {
    return [
      GetPage(
        name: RouteNames.home,
        page: () => const Home(),
        binding: const HomeBinding(),
      ),
      GetPage(
        name: RouteNames.signIn,
        page: () => const LoginPage(),
        binding: const SignInBinding(),
      ),
      GetPage(
        name: RouteNames.splash,
        page: () => const SplashPage(),
        binding: const SplashBinding(),
      ),
      GetPage(
        name: RouteNames.add,
        page: () => const AddNamePage(),
        binding: const HomeBinding(),
      ),
      GetPage(
        name: RouteNames.edit,
        page: () => const EditNamePage(),
        binding: const HomeBinding(),
      ),
    ];
  }
}
