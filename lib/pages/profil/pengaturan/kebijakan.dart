import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class kebijakan extends StatefulWidget {
  @override
  State<kebijakan> createState() => _kebijakanState();
}

class _kebijakanState extends State<kebijakan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: '4DA934'.toColor(),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Privacy Policy',
            style: GoogleFonts.poppins().copyWith(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 35,
            color: '4DA934'.toColor(),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                  color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Wrap(
              runSpacing: 15,
              children: [
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut vitae mattis consectetur. Venenatis at maecenas augue tempus, urna, est natoque in. Risus egestas pretium, enim varius rhoncus mus accumsan bibendum.',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                    color: '4A4A4A'.toColor(),
                  ),
                ),
                Text(
                  'In vulputate facilisis turpis consequat pellentesque suspendisse tincidunt vel. Nisl nibh sed urna, egestas cras ullamcorper at dui sit. Mi nunc odio ultrices egestas ac. In ultricies phasellus vel neque consequat, ut vitae. Urna eu, adipiscing egestas laoreet ac fermentum. Volutpat accumsan cursus sed ipsum. Sagittis luctus diam tincidunt imperdiet dui tincidunt. Id non laoreet tempus eu.',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                    color: '4A4A4A'.toColor(),
                  ),
                ),
                Text(
                  'At facilisis est accumsan adipiscing elit. Morbi velit, pellentesque varius amet tellus elit nec massa. Habitant mauris, nisi bibendum fermentum lectus sapien, quis velit. Ut amet cras ut consectetur amet, vestibulum blandit dictum.',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                    color: '4A4A4A'.toColor(),
                  ),
                ),
                Text(
                  'Aenean auctor ultricies feugiat faucibus pulvinar vel consectetur. Sagittis, scelerisque id at amet, eget. Nibh nulla a est dui pellentesque lectus leo justo. Risus facilisi id lectus at euismod proin. Non pretium ornare hac sit. Nullam semper suspendisse fames in donec leo turpis sed eu. Orci adipiscing in amet tellus proin pellentesque. Lobortis lectus consequat tempus vel ipsum ultrices sed tortor. Elementum eget sagi.',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                    color: '4A4A4A'.toColor(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
