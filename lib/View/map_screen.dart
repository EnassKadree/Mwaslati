import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:iconsax/iconsax.dart';
import 'package:latlong2/latlong.dart';
import 'package:transport_app/View/Widget/modal_sheet.dart';
import 'package:transport_app/View/Widget/textfield.dart';

class MapScreen extends StatefulWidget 
{
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> 
{
  double lat = 33.5193;
  double long = 36.3135;

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (     

      body: Stack
      (
        children: 
        [
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(lat, long),
              initialZoom: 13,
            ),
            children: [
              TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
              ),
            ],
          ),
          Positioned
          (
            top: 30, left: 12, right: 12,
            child: Row
            (
              mainAxisSize: MainAxisSize.min,
              children: 
              [ 
                const Expanded(child: MyTextField()),
                const SizedBox(width: 10,),
                IconButton.filled
                (
                  style: IconButton.styleFrom
                  (
                    backgroundColor: Colors.black87,
                    elevation: 3,
                    shadowColor: Colors.grey[400]
                  ),
                  padding: const EdgeInsets.all(16),
                  iconSize: 20,
                  onPressed: ()
                  {
                    showModalBottomSheet
                    (
                      isScrollControlled: true,
                      context: context, 
                      builder: (context)
                      {
                        return const MyModalSheet();
                      }
                    );
                  }, 
                  icon: const Icon(Iconsax.search_normal, color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
