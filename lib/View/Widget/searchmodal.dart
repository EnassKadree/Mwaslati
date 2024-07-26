import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:transport_app/View/Widget/timelinetile.dart';

class SearchModalSheet extends StatefulWidget 
{
  const SearchModalSheet({super.key});

  @override
  State<SearchModalSheet> createState() => _SearchModalSheetState();
}

class _SearchModalSheetState extends State<SearchModalSheet> 
{
  bool clicked = false;
  bool favorite = false;
  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      decoration: BoxDecoration
      (
        boxShadow: const [BoxShadow
        (
          color: Colors.black54,
          offset: Offset(0,-1),
          blurRadius: 5
        )],
        color: Colors.white,
        borderRadius: BorderRadius.circular(18)
      ),
      height: !clicked? MediaQuery.of(context).size.height/3.5 : MediaQuery.of(context).size.height/1.7,
      child: SingleChildScrollView
      (
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: 
          [
            const SizedBox(height: 12,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: 
                [
                  Text('الهمك', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Spacer(),
                  Icon(Iconsax.arrow_left, color: Colors.blue,),
                  Spacer(),
                  Text('المزة', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            const SizedBox(height: 6,),
            const Divider(),
            const SizedBox(height: 6,),
            const Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: 
              [
                Column
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                  [
                    Text('30', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Text('دقيقة', style: TextStyle(fontSize: 12, color: Colors.grey),),
                  ],
                ),
                Column
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                  [
                    Text('7', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Text('محطات وقوف', style: TextStyle(fontSize: 12, color: Colors.grey),),
                  ],
                ),
                Column
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                  [
                    Text('2', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Text('عدد الخطوط', style: TextStyle(fontSize: 12, color: Colors.grey),),
                  ],
                ),
                Column
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                  [
                    Text('1000', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Text('التسعيرة', style: TextStyle(fontSize: 12, color: Colors.grey),),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            !clicked 
            ?
            Padding
            (
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox
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
                    clicked = true;
                    setState(() {});
                  }, 
                  child: const Text('تفاصيل الرحلة', style: TextStyle(color: Colors.white, fontSize: 18))
                ),
              ),
            )
            :
            const Column
            (
              children: 
              [
                MyTimeLineTile(title: 'ساحة الهدى', isFirst: true,),
                MyTimeLineTile(title: 'المواساة'),
                MyTimeLineTile(title: 'البرامكة',),
                MyTimeLineTile(title: 'مهاجرين صناعة', walk: true,),
                MyTimeLineTile(title: 'الفحامة',),
                MyTimeLineTile(title: 'كراج الست'),
                MyTimeLineTile(title: 'الهمك', isLast: true,),
                SizedBox(height: 20,)
              ],
            )
          ],
        ),
      ),
    );
  }
}