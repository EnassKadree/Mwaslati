import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:transport_app/View/Widget/timelinetile.dart';

class MyModalSheet extends StatefulWidget 
{
  const MyModalSheet({super.key});

  @override
  State<MyModalSheet> createState() => _MyModalSheetState();
}

class _MyModalSheetState extends State<MyModalSheet> 
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: 
                [
                  const Spacer(),
                  const Text('مهاجرين صناعة ', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  const Spacer(),
                  IconButton
                  (

                    color: favorite? Colors.red: Colors.black,
                    onPressed: ()
                    {
                      favorite = !favorite;
                      setState(() {
                        
                      });
                    }, 
                  icon: !favorite? const Icon(Iconsax.heart) : const Icon(Iconsax.heart5)),
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
                    Text('30', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text('دقيقة', style: TextStyle(fontSize: 14, color: Colors.grey),),
                  ],
                ),
                Column
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                  [
                    Text('7', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text('محطات وقوف', style: TextStyle(fontSize: 14, color: Colors.grey),),
                  ],
                ),
                Column
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                  [
                    Text('1000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text('التسعيرة', style: TextStyle(fontSize: 14, color: Colors.grey),),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16,),
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
                  child: const Text('تفاصيل الخط', style: TextStyle(color: Colors.white, fontSize: 18))
                ),
              ),
            )
            :
            const Column
            (
              children: 
              [
                MyTimeLineTile(title: 'المهاجرين', isFirst: true,),
                MyTimeLineTile(title: 'سوق الحمرا',),
                MyTimeLineTile(title: 'البرامكة',),
                MyTimeLineTile(title: 'الفحامة',),
                MyTimeLineTile(title: 'باب مصلى',),
                MyTimeLineTile(title: 'كراج الست', isLast: true,),
                SizedBox(height: 20,)
              ],
            )
          ],
        ),
      ),
    );
  }
}