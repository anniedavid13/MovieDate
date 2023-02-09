import 'package:flutter/material.dart';
import 'login routes/welcome_screen.dart';

void main() => runApp(MovieDate());
class MovieDate extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
      },
      color: Colors.white,
    );
  }
}
