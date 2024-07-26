import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container
    (
      decoration: BoxDecoration
      (
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [BoxShadow
        (
          color: Colors.black54,
          offset: Offset(0, 3),
          blurRadius: 5
        )]
      ),
      child: TextFormField
      (
        decoration: InputDecoration
        (
          filled: true,
          fillColor: Colors.white,
          hintText: 'بحث',
          contentPadding: const EdgeInsets.all(15),
          border: OutlineInputBorder
          (
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none
          )
        ),
      ),
    );
  }
}