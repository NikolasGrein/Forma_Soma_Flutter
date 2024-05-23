import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa2 extends StatefulWidget {
  const Mapa2({super.key});

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Mapa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA MUNDI DESERTO'),
        centerTitle: true,
        backgroundColor:  Colors.orange,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center : LatLng(37.7749, -122.4194), zoom: 3), //San Francisco, CA
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/pioneer/{z}/{x}/{y}.png?apikey=bc2bf89b9cef47b485b824bf3b373287',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(36.147247, -115.156029),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.red),
                    ),
                  ),


                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
