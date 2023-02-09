import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup.dart';
import '/components/homepage.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  static const String id = 'welcome_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
              child: Text(
                'Welcome back!',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 40.0
                ),
              ),
            ),
            SizedBox(
              height: 70.0,
            ),

            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 40),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    initialValue: 'Email Address',
                    style: GoogleFonts.poppins(
                        fontSize: 20.0,
                        color: Colors.black45
                    ),
                    maxLength: 40,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFFB200)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    initialValue: 'Password',
                    style: GoogleFonts.poppins(
                        fontSize: 20.0,
                        color: Colors.black45
                    ),
                    maxLength: 40,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFFB200)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children:
              [
                Container(
                    margin: EdgeInsets.only(left: 20.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.poppins(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black
                      ),
                    )
                ),
                SizedBox(
                  width: 100.0,
                ),
                FloatingActionButton(
                  backgroundColor: Color(0xFFFFB200),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Icon(Icons.arrow_right_alt_sharp),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  'Don\'t have an account?Sign Up.',
                  style: GoogleFonts.poppins(
                      fontSize: 20.0
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );


  }
}
