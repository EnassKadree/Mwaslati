
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ContactInfoCard extends StatelessWidget {
  const ContactInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[300],
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'أرقام الشكاوى',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Iconsax.sms, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  'johndoe199@gmail.com',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Iconsax.call, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  '912-332-121-231+',
                  style: TextStyle(color: Colors.white,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}