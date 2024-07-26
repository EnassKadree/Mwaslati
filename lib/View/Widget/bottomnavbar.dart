
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:transport_app/View/Widget/navbutton.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container
    (
      padding: const EdgeInsets.symmetric(vertical: 8),
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration
      (
        color: Colors.black87,
        borderRadius: BorderRadius.circular(28),
        boxShadow: const [BoxShadow
        (
          color: Colors.grey,
          blurRadius: 3,
          offset: Offset(0, 1)
        )],
      ),
      child: Row
      (
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: 
        [
          NavButton(icon: Iconsax.call_calling, label: 'تواصل معنا',index: 2),
          NavButton(icon: Iconsax.map_1, label: 'الخريطة',index: 1),
          NavButton(icon: Iconsax.home, label: 'الرئيسة',index: 0),
        ],
      ),
    );
  }
}
