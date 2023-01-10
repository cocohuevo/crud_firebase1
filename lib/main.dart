import 'package:crud_firebase/app.dart';
import 'package:crud_firebase/pages/add_name_page.dart';
import 'package:crud_firebase/pages/edit_name_page.dart';
import 'package:crud_firebase/pages/login_page.dart';
import 'package:crud_firebase/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.web,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => const App(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/add': (context) => const AddNamePage(),
        '/edit': (context) => const EditNamePage(),
      },
    );
  }
}
