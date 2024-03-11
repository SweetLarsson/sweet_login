import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  ///This is the path, work in it
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Beautiful Login',
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.Start,
      getPages: AppPages.Routes,
      transitionDuration: const Duration(seconds: 1),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
    );
  }
}
