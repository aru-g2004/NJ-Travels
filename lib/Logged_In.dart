
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'background classes/GoogleSignInProvider.dart';

class Logged_In extends StatefulWidget {
  const Logged_In({Key? key}) : super(key: key);

  @override
  _Logged_InState createState() => _Logged_InState();
}

class _Logged_InState extends State<Logged_In> {
  @override
  Widget build(BuildContext context) {

    final user = FirebaseAuth.instance.currentUser;

if(user!=null)
  {

    String userPhoto = user.photoURL as String;
    String userName = user.displayName as String;

    return Container(
        alignment: Alignment.center,
        color: Colors.blue[100],
        child: Column(
            children:[
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                maxRadius: 40,
                backgroundImage: NetworkImage(
                    userPhoto
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                  child: Text(
                    'Welcome ' + userName + '!',
                    style:  GoogleFonts.raleway(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontSize: 20
                  )
                  )),
              SizedBox(
                height: 60,
              ),
              SizedBox(
                width: 250,
                child: Card(
                  color: Color.fromRGBO(172,217,106, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextButton.icon(
                    label: Text('Home',
                        style: GoogleFonts.raleway(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 20
                        )
                    ),
                    icon: Icon(
                      Icons.home_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/wdyl');
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 250,
                child: Card(
                    color: Color.fromRGBO(241,243,239, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextButton.icon(
                      icon: Icon(
                        Icons.help_center_outlined,
                        color: Colors.black,
                      ),
                      label: Text('Help',
                          style: GoogleFonts.raleway(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontSize: 20
                          )),
                      onPressed: () {
                        Navigator.pushNamed(context, '/help');
                      },
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 250,
                child: Card(
                  color: Color.fromRGBO(203,196,181, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextButton.icon(
                    icon: Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
                    label: Text('Logout',
                        style:  GoogleFonts.raleway(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 20
                        )),
                    onPressed: () {
                      final provider = Provider.of<GoogleSignInProvider>(
                          context,
                          listen: false);
                      provider.logout();
                    },
                  ),
                ),
              ),


            ]));
  }
else
  {
    return Container();
  }

  }
}
