import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transport_app/Controller/navController.dart';
import 'package:transport_app/View/Widget/bottomnavbar.dart';
import 'package:transport_app/View/contact_screen.dart';
import 'package:transport_app/View/home_screen.dart';
import 'package:transport_app/View/map_screen.dart';

class Layout extends StatelessWidget 
{
  Layout({super.key});

  final NavController controller = Get.put(NavController());

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      bottomNavigationBar: const BottomNav(),
      body: Obx(() 
      {
        switch(controller.selectedItem.value)
        {
          case 0:
            return HomeScreen();
          case 1:
            return const MapScreen();
          case 2: 
            return const ContactScreen();
          default:
            return HomeScreen();
        }
      })
    );
  }
}