import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:love_calcuator/Homepage/view/homepage_screen.dart';

main() {
  runApp(const DefaultApp());
}

class DefaultApp extends StatelessWidget {
  const DefaultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Lover Calculator",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 255, 17, 0),
          secondary: Colors.green,
        ),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
      ),
      home: const HomePage(),
    );
  }
}
