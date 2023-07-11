import 'package:flutter/material.dart';
import 'package:get_api_call/complex_api.dart';
import 'package:get_api_call/homepage.dart';
import 'package:get_api_call/photos_api.dart';

import 'text_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
