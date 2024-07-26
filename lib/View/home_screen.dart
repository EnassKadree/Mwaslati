import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:transport_app/Controller/navController.dart';
import 'package:transport_app/View/Widget/searchformfield.dart';
import 'package:transport_app/View/Widget/searchmodal.dart';

class HomeScreen extends StatelessWidget 
{
  HomeScreen({super.key});

  final NavController controller = Get.put(NavController());

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: const Color(0xfff8f8f8),
      body: SingleChildScrollView
      (
        child: Column
        (
          children: 
          [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container
              (
                decoration: BoxDecoration
                (
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  boxShadow: [BoxShadow
                  (
                    color: Colors.grey[300]!,
                    blurRadius: 30,
                    offset: const Offset(0, 30)
                  )]
                ),
                child: Padding
                (
                  padding: const EdgeInsets.all(8.0),
                  child: Column
                  (
                    children: 
                    [
                      Row(
                        children: 
                        [
                          const SizedBox
                          (
                            width: 200,
                            child: Column
                            (
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: 
                              [
                                Text('ابحث عن مسارك', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                Text
                                (
                                  'قم بمعرفة المسار المفضل   الذي ستسلكه للوصول لوجهتك',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Image.asset('assets/images/image.png', width: 125,),
                        ],
                      ),
                      Divider(color: Colors.grey[300]!,),
                      const SizedBox(height: 16,),
                      const SearchFormField(hint: 'أريد الذهاب من..',),
                      const SizedBox(height: 16,),
                      const SearchFormField(hint: 'إلى..',),
                      const SizedBox(height: 16,),
                      SizedBox
                      (
                        width: double.infinity,
                        child: ElevatedButton
                        (
                          style: ElevatedButton.styleFrom
                          (
                            backgroundColor: Theme.of(context).primaryColorDark,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
                          ),
                          onPressed: ()
                          {
                            controller.selectItem(1);
                            showModalBottomSheet(context: context, builder: (context) {return const  SearchModalSheet();});
                          }, 
                          child: const Text('متابعة', style: TextStyle(color: Colors.white, fontSize: 18))
                        ),
                      ),
                      const SizedBox(height: 32,)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Stack
              (
                children: 
                [
                  Image.asset('assets/images/image2.png', height: 200),
                  Positioned
                  (
                    top: 50,
                    left: 75,
                    child: InkWell
                    (
                      onTap: ()
                      {
                        controller.selectedItem(1);
                      },
                      child: const Card
                      (
                        elevation: 0,
                        color: Colors.black87,
                        child: Padding
                        (
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          child: Row
                          (
                            mainAxisSize: MainAxisSize.min,
                            children: 
                            [
                              Text('ابحث ضمن الخريطة', style: TextStyle(color: Colors.white, fontSize: 13),),
                              SizedBox(width: 8,),
                              Icon(Iconsax.location, color: Colors.white, size: 16,)
                            ],
                          ),
                        )
                      ),
                    )
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
