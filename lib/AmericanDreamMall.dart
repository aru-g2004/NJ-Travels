import 'package:maps_launcher/maps_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';


class AmericanDreamMall extends StatelessWidget {


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
                    child: Text('American Dream Mall', style: GoogleFonts.raleway(
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
                    "https://loving-newyork.com/wp-content/uploads/2019/08/american-dream-mall-190731103940001.jpg", ),
              )),

                SizedBox(height: 20,),

              Text(
                    'American Dream is a retail and entertainment complex in the Meadowlands Sports Complex in East Rutherford, New Jersey, United States. '
                        ,  style: GoogleFonts.raleway(
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
                        onPressed: ()=> launch('https://www.google.com/search?q=american+dream+mall'),
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
                        Navigator.pushNamed(context, '/AMDrev');
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
                            'American Dream Mall, NJ, USA')),
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
                            Navigator.pushNamed(context, '/AMDsub');
                          }
                      ),
                    )),




              ]),
      ),
    );

  }}








