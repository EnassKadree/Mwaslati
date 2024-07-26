import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transport_app/View/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return GetMaterialApp(
      theme: ThemeData
      (
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, brightness: Brightness.light),
        useMaterial3: true,
        fontFamily: "Cairo"
      ),
      debugShowCheckedModeBanner: false,
      home:  Directionality(textDirection: TextDirection.rtl, child: Layout()) 
    );
  }
}
