
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mazingirasmart/customwidgets/custompagewidget.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
      title: 'Locate recycling center',
      titleIcon: Icons.restore_from_trash,
      height: 200.0,
     child: Scaffold(
 body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Location',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: GoogleMap(
              initialCameraPosition: const CameraPosition(
                target: LatLng(-6.7, 39.2),
                zoom: 10,
              ),
              markers: Set<Marker>.from([
                const Marker(
                  markerId: MarkerId('recyclingCenter'),
                  position: LatLng(0, 0),
                  infoWindow: InfoWindow(title: 'Recycling Center'),
                ),
              ]),
            ),
          ),
        ],
      ),
    ),
    );
  }
}
    
     