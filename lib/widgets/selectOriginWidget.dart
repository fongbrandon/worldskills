import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class SelectOriginWidget extends StatefulWidget {
  @override
  _SelectOriginWidgetState createState() => _SelectOriginWidgetState();
}

class _SelectOriginWidgetState extends State<SelectOriginWidget> {
  List<Marker> markers = [];

  GoogleMapController gmc;

  LatLng origin = LatLng(0, 0);

  LatLng initialPos = LatLng(18.01910332244018, -76.74359886931178);

  void onMapCreated(GoogleMapController controller) async {
    gmc = await controller;
  }

  @override
  void dispose() {
    gmc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xBF7e63b8),
        title: Text("Origin Selection"),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: initialPos, zoom: 14.0),
              mapType: MapType.normal,
              onMapCreated: onMapCreated,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              zoomControlsEnabled: true,
              markers: markers.toSet(),
              onTap: _originSelection,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                child: Text("Submit Selection"),
                onPressed: () {
                  if (origin == LatLng(0, 0)) {
                    showDialog(builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Origin Error"),
                        content: Text(
                            "Origin not selected, select and try again or go back."),
                      );
                    }, context: context);
                  } else {
                    print(origin);
                    Navigator.pop(context);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  _originSelection(LatLng posTapped) {
    print(posTapped);
    setState(() {
      markers = [];
      markers.add(Marker(
        markerId: MarkerId(posTapped.toString()),
        position: posTapped,
      ));
      origin = posTapped;
    });
  }
}
