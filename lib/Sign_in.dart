
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'background classes/GoogleSignInProvider.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  _Sign_InState createState() => _Sign_InState();
}
class _Sign_InState extends State<Sign_In> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: ListView(
        children: [
          SizedBox(width: 300, height:50),
          SizedBox(
            width: 160,
            height: 160,
            child: Image(
              image: NetworkImage(
               // 'https://i.ibb.co/vVXmLfL/My-logo-for-nj-picks.png',
                'https://i.ibb.co/rkQW2k7/My-logo-for-nj-picks-4.png',
              ),),
          ),
          SizedBox(width: 300, height:50),
          Center(
            child: Text('NJ Picks', style: GoogleFonts.raleway(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
              color: Colors.black,
              fontSize: 60,
            ),),
          ),
          SizedBox(width: 300, height:20),
          Center(
            child: Text('Your trusted NJ Trip planner!', style: GoogleFonts.raleway(
              decoration: TextDecoration.none,
                color: Colors.black,
              fontSize: 20
            )),
          ),

    SizedBox(width: 200, height: 20),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton.icon(
                label: Text(
                    'Sign In With Google',
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                          decoration: TextDecoration.none,
                    fontSize: 20
                )), onPressed: () {
    final provider =
    Provider.of<GoogleSignInProvider>(context, listen: false);
    provider.login(); },

                icon: FaIcon(FontAwesomeIcons.google, color: Colors.blue[100], ))),
          )



      ])

    );
  }
}




//to do

/*

put the app together
screens
- splash screen CHECK
- login CHECK
- home screen (lets them either generate a list or see previous lists, profile, setting) similar to eyp
- if u click on the button to generate list, you see the category picker
- then theres the top 10 generator
- for each of the places, there will be a template that contains the pic, reviews, descriptions and a maps link
- at the top of the top10 screen you can go back to regenerate

TO DO
- make list generator work
- home screen

 */



