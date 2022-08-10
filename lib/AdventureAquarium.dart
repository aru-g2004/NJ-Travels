import 'package:maps_launcher/maps_launcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:nj_travels_arushi_2/WhatDoYouLike.dart';
import 'package:multiple_stream_builder/multiple_stream_builder.dart';
import 'Top10.dart';
import 'WhatDoYouLike.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'background classes/ReviewsPageTemplate.dart';


class AdventureAquarium extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
            children: [
              SizedBox(height: 20,),

              Center(
                child: Text('Adventure Aquarium', style: GoogleFonts.raleway(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 30
                )),
              ),
              SizedBox(height: 20,),
              SizedBox(
                  width: 400,
                  child:
                  ClipRect(
                    child: Image.network(
                      "https://www.visitphilly.com/wp-content/uploads/2017/12/crtsy-Adventure-Aquarium-tunnel-2200VP.jpg", ),
                  )),

              SizedBox(height: 20,),

              Text(
                  'Adventure Aquarium, located just minutes from Center City Philadelphia on the Camden Waterfront, features one-of-a-kind exhibits and nearly 15,000 aquatic animals within two million gallons of water.', style: GoogleFonts.raleway(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontSize: 15)
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 250,
                child: Card(
                    color: Color.fromRGBO(203,196,181, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextButton.icon(
                      label: Text('Find out more',
                          style: GoogleFonts.raleway(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontSize: 15
                          )
                      ),

                      icon: Icon(
                        Icons.
                        search
                        ,
                        color: Colors.black,
                      ),
                      onPressed: ()=> launch('https://www.google.com/search?q=adventure+aquarium'),
                    )),
              ),
              SizedBox(height: 20,),

              SizedBox(
                  width: 250,
                  child: Card(
                    color: Color.fromRGBO(172,217,106, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextButton.icon(
                        label: Text('View Reviews',
                            style: GoogleFonts.raleway(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: 15
                            )
                        ),

                        icon: Icon(
                          Icons.
                          thumbs_up_down
                          ,
                          color: Colors.black,
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, '/AArev');
                        }
                    ),
                  )),

              SizedBox(height: 20,),
              SizedBox(
                width: 250,
                child: Card(
                  color: Color.fromRGBO(241,243,239, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextButton.icon(
                      label: Text('Open in maps',
                          style: GoogleFonts.raleway(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontSize: 15
                          )
                      ),

                      icon: Icon(
                        Icons.
                        location_on
                        ,
                        color: Colors.black,
                      ),
                      onPressed: () => MapsLauncher.launchQuery(
                          'Adventure Aquarium, NJ, USA')),
                ),
              ),

              SizedBox(height: 20,),


              SizedBox(
                  width: 250,
                  child: Card(
                    color: Colors.blue[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextButton.icon(
                        label: Text('Submit A Review',
                            style: GoogleFonts.raleway(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: 15
                            )
                        ),
                        icon: Icon(
                          Icons.
                          create
                          ,
                          color: Colors.black,
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, '/AAsub');
                        }
                    ),
                  )),






            ]),
      ),
    );

  }}








