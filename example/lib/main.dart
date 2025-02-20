import 'package:baseview/baseview.dart';
import 'package:example/bindings.dart';
import 'package:example/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      builder: (context, child) => GetMaterialApp(
        title: 'Flutter Demo',
        initialBinding: GlobalBinding(),
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        //   colorScheme: ColorScheme.fromSwatch(
        //     primarySwatch: Colors.blue,
        //   ).copyWith(secondary: Colors.red),
        // ),
        home: HomePage(),
      ),
    );
  }
}

