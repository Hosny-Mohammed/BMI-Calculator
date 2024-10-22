import 'package:bmi_calculator/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (BuildContext context) => HomeProvider(),
        child: HomePage(),
      ),
    );
  }
}
