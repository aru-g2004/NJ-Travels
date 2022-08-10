import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class WhatDoYouLike extends StatefulWidget {
  static List<String> chosenCat = [];

  const WhatDoYouLike({Key? key}) : super(key: key);

  @override
  _WhatDoYouLikeState createState() => _WhatDoYouLikeState();
}


/*

FIX THE LIST PROBLEM: make sure that they can add multiple to a list, and fix the opacity

 */

class _WhatDoYouLikeState extends State<WhatDoYouLike> {
  final List<String> categories = [
    'Beach',
    'Family',
    'Food',
    'Music',
    'Nature',
    'Shopping',
    'Sports',
    'Thrill',
  ];

  final List<String> giphybuttons = [
    //beach
    'https://cdn.mos.cms.futurecdn.net/wtqqnkYDYi2ifsWZVW2MT4-320-80.jpg',
    // family
    'https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/2020-09/Family_TomWang_Shutterstock_286469927_0.jpg',
    //food
    'https://media.architecturaldigest.com/photos/590cc6c3b3064307ffee59a4/master/w_3000,h_2000,c_limit/Tallest%20Restaurants%20in%20the%20World%207.jpg',
    //music
    'https://imgix.bustle.com/uploads/getty/2022/1/4/abacf7e4-1aaf-446c-a68f-6eea27e4f790-getty-938603878.jpg?w=1200&h=630&fit=crop&crop=faces&fm=jpg',
    //nature
    'https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/Zugpsitze_mountain.jpg',
    //Shopping
    'https://feelmyworth.com/wp-content/uploads/2021/06/outlet-shopping.jpg',
//Sports
    'https://cdn1.sph.harvard.edu/wp-content/uploads/sites/21/2015/06/Women-playing-soccer-release.jpg',
// Thrill
    'https://sites.psu.edu/siowfa15/wp-content/uploads/sites/29639/2015/10/Screen-Shot-2015-10-19-at-12.03.53-PM.png',
  ];

  bool _hasBeenPressed = false;
  bool _hasBeenPressed1 = false;
  bool _hasBeenPressed2 = false;
  bool _hasBeenPressed3 = false;
  bool _hasBeenPressed4 = false;
  bool _hasBeenPressed5 = false;
  bool _hasBeenPressed6 = false;
  bool _hasBeenPressed7 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        centerTitle: true,
        title: Text('What do you like?',
            style: GoogleFonts.raleway(
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 25)),
      ),
      backgroundColor: Colors.blue[100],
      body: GridView
          .count(crossAxisCount: 2, scrollDirection: Axis.vertical, children: [
// BUTTON O
     TextButton(
              onPressed: () {
                setState(() {
                  _hasBeenPressed = !_hasBeenPressed;

                  if (_hasBeenPressed &&
                      !(WhatDoYouLike.chosenCat
                          .contains(categories.elementAt(0))))
                    WhatDoYouLike.chosenCat.add(categories.elementAt(0));
                  else
                    WhatDoYouLike.chosenCat.remove(categories.elementAt(0));
                });
                print(WhatDoYouLike.chosenCat);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                    child: Container(

                        color: _hasBeenPressed
                            ? Colors.white.withOpacity(0.8)
                            : Colors.white.withOpacity(0.35),
                      child: Column(
                         children:[
                      Image(image: NetworkImage(
                                   giphybuttons.elementAt(0))
                               ),
                           SizedBox(height: 10),
                           Center(
                             child: BorderedText(
                                 strokeWidth: 2,
                                 strokeColor: Colors.white,
                                 child: Text(categories.elementAt(0),
                                     style: GoogleFonts.raleway(
                                         fontWeight: FontWeight.bold,
                                         decoration: TextDecoration.none,
                                         color: Colors.black,
                                         fontSize: 20))),
                           ),


                         ]
                          // first value is IF TRUE clicked

                          )
                  ),
                ),
              ),
        ),
// NEXT BUTTON, BUTTON 1
        TextButton(
          onPressed: () {
            setState(() {
              _hasBeenPressed1 = !_hasBeenPressed1;

              if (_hasBeenPressed1 &&
                  !(WhatDoYouLike.chosenCat
                      .contains(categories.elementAt(1))))
                WhatDoYouLike.chosenCat.add(categories.elementAt(1));
              else
                WhatDoYouLike.chosenCat.remove(categories.elementAt(1));
            });
            print(WhatDoYouLike.chosenCat);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(

                  color: _hasBeenPressed1
                      ? Colors.white.withOpacity(0.8)
                      : Colors.white.withOpacity(0.35),
                  child: Column(
                      children:[
                        Image(image: NetworkImage(
                            giphybuttons.elementAt(1),)
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: BorderedText(
                              strokeWidth: 2,
                              strokeColor: Colors.white,
                              child: Text(categories.elementAt(1),
                                  style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Colors.black,
                                      fontSize: 20))),
                        ),


                      ]
                    // first value is IF TRUE clicked

                  )
              ),
            ),
          ),
        ),
//BUTTON 2
        TextButton(
          onPressed: () {
            setState(() {
              _hasBeenPressed2 = !_hasBeenPressed2;

              if (_hasBeenPressed2 &&
                  !(WhatDoYouLike.chosenCat
                      .contains(categories.elementAt(2))))
                WhatDoYouLike.chosenCat.add(categories.elementAt(2));
              else
                WhatDoYouLike.chosenCat.remove(categories.elementAt(2));
            });
            print(WhatDoYouLike.chosenCat);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(

                  color: _hasBeenPressed2
                      ? Colors.white.withOpacity(0.8)
                      : Colors.white.withOpacity(0.35),
                  child: Column(
                      children:[
                        Image(image: NetworkImage(
                            giphybuttons.elementAt(2))
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: BorderedText(
                              strokeWidth: 2,
                              strokeColor: Colors.white,
                              child: Text(categories.elementAt(2),
                                  style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Colors.black,
                                      fontSize: 20))),
                        ),


                      ]
                    // first value is IF TRUE clicked

                  )
              ),
            ),
          ),
        ),
// button 3
        TextButton(
          onPressed: () {
            setState(() {
              _hasBeenPressed3 = !_hasBeenPressed3;

              if (_hasBeenPressed3 &&
                  !(WhatDoYouLike.chosenCat
                      .contains(categories.elementAt(3))))
                WhatDoYouLike.chosenCat.add(categories.elementAt(3));
              else
                WhatDoYouLike.chosenCat.remove(categories.elementAt(3));
            });
            print(WhatDoYouLike.chosenCat);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(

                  color: _hasBeenPressed3
                      ? Colors.white.withOpacity(0.8)
                      : Colors.white.withOpacity(0.35),
                  child: Column(
                      children:[
                        Image(image: NetworkImage(
                            giphybuttons.elementAt(3))
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: BorderedText(
                              strokeWidth: 2,
                              strokeColor: Colors.white,
                              child: Text(categories.elementAt(3),
                                  style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Colors.black,
                                      fontSize: 20))),
                        ),


                      ]
                    // first value is IF TRUE clicked

                  )
              ),
            ),
          ),
        ),
// button 4
        TextButton(
          onPressed: () {
            setState(() {
              _hasBeenPressed4 = !_hasBeenPressed4;

              if (_hasBeenPressed4 &&
                  !(WhatDoYouLike.chosenCat
                      .contains(categories.elementAt(4))))
                WhatDoYouLike.chosenCat.add(categories.elementAt(4));
              else
                WhatDoYouLike.chosenCat.remove(categories.elementAt(4));
            });
            print(WhatDoYouLike.chosenCat);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(

                  color: _hasBeenPressed4
                      ? Colors.white.withOpacity(0.8)
                      : Colors.white.withOpacity(0.35),
                  child: Column(
                      children:[
                        Image(image: NetworkImage(
                            giphybuttons.elementAt(4))
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: BorderedText(
                              strokeWidth: 2,
                              strokeColor: Colors.white,
                              child: Text(categories.elementAt(4),
                                  style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Colors.black,
                                      fontSize: 20))),
                        ),


                      ]
                    // first value is IF TRUE clicked

                  )
              ),
            ),
          ),
        ),
// button 5
        TextButton(
          onPressed: () {
            setState(() {
              _hasBeenPressed5 = !_hasBeenPressed5;

              if (_hasBeenPressed5 &&
                  !(WhatDoYouLike.chosenCat
                      .contains(categories.elementAt(5))))
                WhatDoYouLike.chosenCat.add(categories.elementAt(5));
              else
                WhatDoYouLike.chosenCat.remove(categories.elementAt(5));
            });
            print(WhatDoYouLike.chosenCat);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(

                  color: _hasBeenPressed5
                      ? Colors.white.withOpacity(0.8)
                      : Colors.white.withOpacity(0.35),
                  child: Column(
                      children:[
                        Image(image: NetworkImage(
                            giphybuttons.elementAt(5))
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: BorderedText(
                              strokeWidth: 2,
                              strokeColor: Colors.white,
                              child: Text(categories.elementAt(5),
                                  style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Colors.black,
                                      fontSize: 20))),
                        ),


                      ]
                    // first value is IF TRUE clicked

                  )
              ),
            ),
          ),
        ),
// button 6
        TextButton(
          onPressed: () {
            setState(() {
              _hasBeenPressed6 = !_hasBeenPressed6;

              if (_hasBeenPressed6 &&
                  !(WhatDoYouLike.chosenCat
                      .contains(categories.elementAt(6))))
                WhatDoYouLike.chosenCat.add(categories.elementAt(6));
              else
                WhatDoYouLike.chosenCat.remove(categories.elementAt(6));
            });
            print(WhatDoYouLike.chosenCat);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(

                  color: _hasBeenPressed6
                      ? Colors.white.withOpacity(0.8)
                      : Colors.white.withOpacity(0.35),
                  child: Column(
                      children:[
                        Image(image: NetworkImage(
                            giphybuttons.elementAt(6))
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: BorderedText(
                              strokeWidth: 2,
                              strokeColor: Colors.white,
                              child: Text(categories.elementAt(6),
                                  style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Colors.black,
                                      fontSize: 20))),
                        ),


                      ]
                    // first value is IF TRUE clicked

                  )
              ),
            ),
          ),
        ),
// button 7
        TextButton(
          onPressed: () {
            setState(() {
              _hasBeenPressed7 = !_hasBeenPressed7;

              if (_hasBeenPressed7 &&
                  !(WhatDoYouLike.chosenCat
                      .contains(categories.elementAt(7))))
                WhatDoYouLike.chosenCat.add(categories.elementAt(7));
              else
                WhatDoYouLike.chosenCat.remove(categories.elementAt(7));
            });
            print(WhatDoYouLike.chosenCat);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(

                  color: _hasBeenPressed7
                      ? Colors.white.withOpacity(0.8)
                      : Colors.white.withOpacity(0.35),
                  child: Column(
                      children:[
                        Image(image: NetworkImage(
                            giphybuttons.elementAt(7))
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: BorderedText(
                              strokeWidth: 2,
                              strokeColor: Colors.white,
                              child: Text(categories.elementAt(7),
                                  style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Colors.black,
                                      fontSize: 20))),
                        ),


                      ]
                    // first value is IF TRUE clicked

                  )
              ),
            ),
          ),
        ),
        Center(
            child: SizedBox(
          height: 100,
          width: 200,
          child: Card(
            color: Colors.blue[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextButton.icon(
              label: Text('Clear all',
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontSize: 20)),
              icon: Icon(
                Icons.delete,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  WhatDoYouLike.chosenCat.clear();
                  _hasBeenPressed1 = false;
                  _hasBeenPressed2 = false;
                  _hasBeenPressed3 = false;
                  _hasBeenPressed4 = false;
                  _hasBeenPressed5 = false;
                  _hasBeenPressed6 = false;
                  _hasBeenPressed7 = false;
                });
              },
            ),
          ),
        )),
        Center(
            child: SizedBox(
          height: 100,
          width: 200,
          child: Card(
            color: Colors.green[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextButton.icon(
              label: Text('Top 10',
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontSize: 20)),
              icon: Icon(
                Icons.arrow_circle_right_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/top10');
              },
            ),
          ),
        ))
      ]),
    );
  }
}
// At this point i would have a list of their ralewayests, i need to make a family of if statements and geerate accordingly
