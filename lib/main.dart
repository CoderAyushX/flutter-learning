import 'package:firstapp/utils/route.dart';
import 'package:firstapp/utils/theme.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "first app",
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoute.homeRoute,
      routes: {
        MyRoute.homeRoute: (context) => const HomePage(),
        MyRoute.loginRoute: (context) => const LoginPage(),
      },
      
    );
  }
}
