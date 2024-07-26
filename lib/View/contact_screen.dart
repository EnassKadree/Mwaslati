import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transport_app/View/Widget/contactinfocard.dart';
import 'package:transport_app/View/Widget/contactoption.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold
    (
      backgroundColor: Color(0xfff8f8f8),
      body:Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              ContactOption(
                title: 'تواصل مع الدعم الفني',
                subtitle: 'We can assist you if you have any queries',
              ),
              ContactOption(
                title: 'رأيك يهمنا',
                subtitle: 'Your feedback fuels a better experience for you.',
              ),
              ContactOption(
                title: 'قوانين الاستخدام',
                subtitle: 'Read terms for better understanding.',
              ),
              SizedBox(height: 20),
              ContactInfoCard(),
            ],
          ),
        ),
    );
  }
}
