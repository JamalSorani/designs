import 'package:designs/pages/colors_page.dart';
import 'package:designs/pages/gradient_page.dart';
import 'package:designs/pages/gridview_page.dart';
import 'package:designs/pages/home_page.dart';
import 'package:designs/pages/items_page.dart';
import 'package:designs/pages/listview_page.dart';
import 'package:designs/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.pink[100],
      ),
      home: const HomePage(),
      routes: {
        ItemsPage.route: (context) => const ItemsPage(),
        LoginPage.route: (context) => const LoginPage(),
        GridViewPage.route: (context) => const GridViewPage(),
        ListViewPage.route: (context) => const ListViewPage(),
        GradientPage.route: (context) => const GradientPage(),
        ColorsPage.route: (context) => const ColorsPage(),
      },
    );
  }
}
