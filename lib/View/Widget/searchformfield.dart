
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchFormField extends StatelessWidget {
  const SearchFormField({
    super.key, required this.hint,
  });
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField
    (
      decoration: InputDecoration
      (
        icon: hint == 'إلى..'? const Icon(Iconsax.location, color: Colors.grey,):
        const Icon(Iconsax.gps, color: Colors.grey,),
        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        contentPadding: const EdgeInsets.all(15),
        border: OutlineInputBorder
        (
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide( color: Colors.grey[300]!)
        ),
        enabledBorder: OutlineInputBorder
        (
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide( color: Colors.grey[300]!)
        ),
        focusedBorder: OutlineInputBorder
        (
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide( color: Colors.grey[300]!)
        ),
      ),
    );
  }
}