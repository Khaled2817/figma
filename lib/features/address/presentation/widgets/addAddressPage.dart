import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/config/text_style.dart';
import 'package:untitled/features/address/presentation/widgets/floatactionwidgetcontainer.dart';


class AddAddress extends StatelessWidget {
  const AddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:const FloatingButtomMap() ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios),
          title: Text(
            "اضافة عنوان جديد",
            style: TextStyleClass.headBoldStyle(),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          height: 100.h,
          width: 100.w,
          child: const GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(37.42796133580664, -122.085749655962),
              zoom: 14.4746,
            ),
          //                markers: Provider.of<MapProvider>(context).markers,
          //         onTap: (latLng) {
          //  Provider.of<MapProvider>(context).addIcon(latLng);
          //         },
          ),
        ));
  }
}
