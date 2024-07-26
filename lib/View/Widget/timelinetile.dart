import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLineTile extends StatelessWidget 
{
  final bool isFirst; final bool isLast; final title; final bool walk;
  const MyTimeLineTile({super.key, this.isFirst = false, this.isLast = false, required this.title, this.walk = false});

  @override
  Widget build(BuildContext context) 
  {
    return Directionality
    (
      textDirection: TextDirection.rtl,
      child: SizedBox
      (
        height: 50,
        child: TimelineTile
        (
          isFirst: isFirst,
          isLast: isLast,
          alignment: TimelineAlign.start,
          beforeLineStyle: LineStyle(color: Colors.blue[100]!, thickness: .8),
          indicatorStyle: IndicatorStyle
          (
            indicator: walk?  Icon
            (
              Iconsax.shuffle, size: 16, color: Colors.deepPurple[300],
            ) : null,
            color: isFirst? Colors.green: isLast? Colors.red: Colors.blue,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: 8, 
          ),
          endChild: ListTile
          (
            title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
            subtitle: 
            isFirst? 
              const Text('نقطة الانطلاق', style: TextStyle(fontSize: 12, color: Colors.grey),) : 
                isLast? const Text('آخر الخط', style: TextStyle(fontSize: 12, color: Colors.grey),) : 
                    walk? const Text('مشي 3 دقائق', style: TextStyle(fontSize: 12, color: Colors.grey),):
                      const SizedBox()
          ),
        ),
      ),
    );
  }
}