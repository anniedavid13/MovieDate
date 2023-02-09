import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_data/login%20routes/signin.dart';
import '/styling/rounded_button.dart';
import 'signup.dart';


class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(20, 40, 20, 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color(0xFFFFB200).withOpacity(0.7),
            ),
            child: Image.asset('images/imagee.png'),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: Text(
              'MovieDate',
              style: GoogleFonts.poppins(
                  decoration: TextDecoration.none,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),

          Container(
            child: Text(
              'Discover your next binge here',
              style: GoogleFonts.poppins(
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 20.0
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          RoundedButton(title: 'Sign Up',
              colour: Colors.black.withOpacity(0.8),
              onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Login() ));
              }),
          RoundedButton(title: 'Sign In',
              colour: Colors.black.withOpacity(0.8),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn() ));

              }),
          SizedBox(
            height: 40.0,
          ),
          Text('Made with 💛 ',
            style: GoogleFonts.poppins(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w300,
              color: Colors.black,
              fontSize: 20.0
            ),)
        ],
      ),
    );
  }
}

