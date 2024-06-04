import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled/config/text_style.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
     AppBar(title: Text("اضافة عنوان جديد",
    style:TextStyleClass.semiBigBoldStyle(),),),
    body: Container(
      child: Column(children: <Widget>[  GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(37.42796133580664, -122.085749655962),
                zoom: 14.4746,
              ),
            )],)
          
    ),
    );
  }
}