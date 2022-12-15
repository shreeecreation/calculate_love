import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:love_calcuator/Homepage/view/homepage_screen.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const DefaultApp());
}

class DefaultApp extends StatelessWidget {
  const DefaultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        SystemChannels.textInput.invokeMethod('TextInput.hide');
      },
      child: GetMaterialApp(
        title: "Lover Calculator",
        theme: ThemeData(
          fontFamily: "charm",
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color.fromARGB(255, 255, 17, 0),
            secondary: Colors.green,
          ),
          textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
        ),
        home: HomePage(),
      ),
    );
  }
}
