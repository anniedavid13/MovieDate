import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xFFFFB200),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
          )
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
         Transform.scale(
            scale: 2.5,
            child: IconButton(onPressed: (){},
                icon: Icon(Icons.person)),
          ),
          Transform.scale(
            scale: 2.5,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.lightBlueAccent)),
              child: IconButton(onPressed: (){},
                  icon: Icon(Icons.movie_rounded)),
            ),
          ),
          Transform.scale(
            scale: 2.5,
            child: IconButton(onPressed: (){},
                icon: Icon(Icons.list_alt_rounded)),
          ),
        ]),
      ),
    );
  }
}

Widget buttonWidget(IconData icon, Color color) {
  return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(color: color)),
    child: Icon(
      icon,
      color: color,
      size: 30,
    ),
  );
}
