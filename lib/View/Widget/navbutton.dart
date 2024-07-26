
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transport_app/Controller/navController.dart';

class NavButton extends StatelessWidget 
{
  final int index;
  final IconData icon;
  final String label;
  NavButton({super.key, 
    required this.index, required this.icon, required this.label, 
  });

  final NavController controller = Get.put(NavController());

  @override
  Widget build(BuildContext context) {
    return Obx(() 
    {
      return InkWell
      (
        onTap: ()
        {
          controller.selectItem(index);
        },
        child: Column
        (
          children: 
          [
            Icon(icon, color: controller.selectedItem.value == index? Colors.blue :  Colors.white,),
            const SizedBox(height: 2,),
            Text(label, style: TextStyle(color: controller.selectedItem.value == index? Colors.blue :  Colors.white, fontSize:10),)
          ],
        ),
      );
    });
  }
}
