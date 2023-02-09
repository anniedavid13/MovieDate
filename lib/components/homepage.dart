import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/utils/appBar.dart';
import '/utils/bottomnav.dart';

class HomePage extends StatefulWidget {
  static const String id = 'homepage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            TopBar(),
            SizedBox(
              height: 20.0,
            ),

            Expanded(
              child: Container(
                child: Image.asset("images/1.jpeg"),
              ),
            ),
            NavBottom(),
          ],
             ),
            ),
        );
  }
}
