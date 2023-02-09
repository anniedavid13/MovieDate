import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class NavBottom extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: Expanded(
            child: StylishBottomBar(
              items: [
                AnimatedBarItems(
                    icon: Icon(
                      Icons.home,
                    ),
                    selectedColor: Colors.deepPurple,
                    backgroundColor: Colors.amber,
                    title: Text('Home')),
                AnimatedBarItems(
                    icon: Icon(
                      Icons.add_circle_outline,
                    ),
                    selectedColor: Colors.green,
                    backgroundColor: Colors.amber,
                    title: Text('Add')),
                AnimatedBarItems(
                    icon: Icon(
                      Icons.person,
                    ),
                    backgroundColor: Colors.amber,
                    selectedColor: Colors.pinkAccent,
                    title: Text('Profile')),
                // BubbleBarItem(icon: Icon(Icons.home), title: Text('Home')),
                // BubbleBarItem(icon: Icon(Icons.add_circle_outline), title: Text('Add')),
                // BubbleBarItem(icon: Icon(Icons.person), title: Text('Profile')),

              ],

              iconSize: 32,
              barAnimation: BarAnimation.liquid,
              // iconStyle: IconStyle.animated,
              // iconStyle: IconStyle.simple,
              hasNotch: true,
              fabLocation: StylishBarFabLocation.end,
              opacity: 0.3,
              // currentIndex: selected ?? 0,

              //Bubble bar specific style properties
              //unselectedIconColor: Colors.grey,
              //barStyle: BubbleBarStyle.horizotnal,
              //bubbleFillStyle: BubbleFillStyle.fill,

              // onTap: (index){
              //        setState((){
              //          selected = index;
              //  });
              //  },

            )
        )
    );
  }
}