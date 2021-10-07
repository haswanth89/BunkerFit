import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:testeee/provider/location_provider.dart';

class Runningmap extends StatefulWidget {
  const Runningmap({Key? key}) : super(key: key);

  @override
  _RunningmapState createState() => _RunningmapState();
}

class _RunningmapState extends State<Runningmap> {
  void initState() {
    super.initState();
    Provider.of<LocationProvider>(context, listen: false).initialization();
  }
  
  Widget build(BuildContext context) {
        return Scaffold(
      body: googleMapUI(),
    );
  }

  Widget googleMapUI() {
    return Consumer<LocationProvider>(builder: (consumerContext, model, child) {
      if (model.locationPosition != null) {
        return Column(
          children: [
            Expanded(
              child: GoogleMap(
                mapType: MapType.hybrid,
                initialCameraPosition: CameraPosition(
                  target: model.locationPosition,
                  zoom: 18,
                ),
                myLocationEnabled: true,
                myLocationButtonEnabled: true,
                markers: Set<Marker>.of(model.markers.values),
                onMapCreated: (GoogleMapController controller) async {
                  Provider.of<LocationProvider>(context, listen: false)
                      .setMapController(controller);
                },
              ),
            ),
          ],
        );
      }

      return Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    });
  }
}