import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushNamed(context, '/pb');
    });

    List<String> list = [
      "Loading a great list of places!", "Ready to go to NJ?",
      "Rate NJ Picks on the app store!"
    ];

    return Container(
        color: Colors.blue[100],
        child: (Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 70,
                  width: 100),
              SizedBox(
                width: 150,
                height: 150,
                child: Image(
                  image: NetworkImage(
                    //'https://i.ibb.co/vVXmLfL/My-logo-for-nj-picks.png',
                    'https://i.ibb.co/rkQW2k7/My-logo-for-nj-picks-4.png',
                  ),),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                    'NJ Picks',
                    maxLines: 1,
                    style: GoogleFonts.raleway(
                        decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 50
                    )
                  ),
             SizedBox(
               height: 30,
             ),
             SizedBox(
               height: 15,
               width: 150,
               child: LinearProgressIndicator(
                    backgroundColor: Colors.blue[200],
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),


                ),
             ),
              SizedBox(
                height: 30,
              ),
              Opacity( //Wrap any widget with Opacity()
                  opacity: 1, //from 0-1, 0.5 = 50% opacity
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 2)
                    ),
                    items: list
                        .map((item) => Container(
                      child: Center(child: Text(item, style: GoogleFonts.raleway(
                        decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 15
                      ))),

                    ))
                        .toList(),
                  )),

            ],
          ),
        )));
  }
}
