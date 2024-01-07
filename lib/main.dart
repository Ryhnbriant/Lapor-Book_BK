import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:laporbookku/firebase_options.dart';
import 'package:laporbookku/pages/AddFormPage.dart';
import 'package:laporbookku/pages/DetailPage.dart';
import 'package:laporbookku/pages/SplashPage.dart';
import 'package:laporbookku/pages/LoginPage.dart';
import 'package:laporbookku/pages/RegisterPage.dart';
import 'package:laporbookku/pages/dashboard/DashboardPage.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    title: "Aplikasi Lapor Book",
    initialRoute: '/',
    routes: {
      '/': (context) => const SplashPage(),
      '/login': (context) => const LoginPage(),
      '/register': (context) => const RegisterPage(),
      '/dashboard': (context) => const DashboardPage(),
      '/add': (context) => const AddFormPage(),
      '/detail': (context) => const DetailPage(),
    },
  ));
}
