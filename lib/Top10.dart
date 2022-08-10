import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nj_travels_arushi_2/WhatDoYouLike.dart';
import 'package:multiple_stream_builder/multiple_stream_builder.dart';
import 'WhatDoYouLike.dart';
import 'package:bordered_text/bordered_text.dart';

/*

PROBLEM: Have non repetitive numbers
 */


TextButton Pics(AsyncSnapshot<QuerySnapshot<Object?>> streamSnapshot, int index, String nav, BuildContext context)
{return
  TextButton(
      onPressed: () {
        Navigator.pushNamed(context, nav );
      },
      child: ClipRRect(
        //  borderRadius: BorderRadius.circular(50),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    streamSnapshot.data?.docs[index]['Pic'],
                  ))),
          child: Container(
              height: 150,
              color: Colors.white.withOpacity(0.4),

              child: Center(
                child:
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: BorderedText(
strokeWidth: 2,
strokeColor: Colors.white,
child:Text(streamSnapshot.data
                      ?.docs[index]['Name'],
                      style:
                      GoogleFonts.inter(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ))
                  ),
                ),
              )),
        ),
      ));
}


class Top10 extends StatefulWidget {
  const Top10({Key? key}) : super(key: key);

  @override
  _Top10State createState() => _Top10State();
}

class _Top10State extends State<Top10> {
  @override
  Widget build(BuildContext context)
  {
  if (WhatDoYouLike.chosenCat.isNotEmpty &&
        WhatDoYouLike.chosenCat.length == 1) {
     //
      String cat1 = WhatDoYouLike.chosenCat.elementAt(0);
     // List<int>randomNumbers = CL.RL(cat1, 10);

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[100],
          title:
              Text('Your 10 Picks', style: GoogleFonts.jost(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 40,
              ),
          ),
        ),
          backgroundColor: Colors.blue[100],
          body: StreamBuilder(
            stream: FirebaseFirestore.instance.collection(cat1)
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              return ListView.builder(
                  itemCount: 10,
                  itemBuilder: (ctx, index) =>
                      TextButton(
                          onPressed: () {
                             Navigator.pushNamed(context, '/AdvAq');
                          },
                          child: ClipRRect(
                            //  borderRadius: BorderRadius.circular(50),
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        streamSnapshot.data?.docs[index]['Pic'],
                                      ))),
                              child: Container(
                                  height: 150,
                                  color: Colors.white.withOpacity(0.4),

                                  child: Center(
                                    child:


                                    // Text(streamSnapshot.data
                                    //     ?.docs[index]['Name'],
                                    //     style:
                                    //     GoogleFonts.rammettoOne(
                                    //         decoration: TextDecoration.none,
                                    //         color: Colors.black,
                                    //         fontSize: 20
                                    //     )
                                    // ),



                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child:    BorderedText(
                                        strokeWidth: 4.0,
                                        strokeColor: Colors.white,
                                        child:
                                        Text(
                                          streamSnapshot.data
                                              ?.docs[index]['Name'],
                                          style: GoogleFonts.raleway(
                                              fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration.none,
                                                    color: Colors.black,
                                                    fontSize: 20
                                                )
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                          )));
            },
          ));
    }
  // 3 catgories
    else {

    Future.delayed(Duration(seconds: 3), () {
      return Container(
        color: Colors.blue[100],
        child: Center(child: CircularProgressIndicator()),
      );
    });

    String cat1 = WhatDoYouLike.chosenCat.elementAt(0);
    String cat2 = WhatDoYouLike.chosenCat.elementAt(1);
    String cat3 = WhatDoYouLike.chosenCat.elementAt(2);


    var stream1 = FirebaseFirestore.instance.collection(cat1).snapshots();
    var stream2 =  FirebaseFirestore.instance.collection(cat2).snapshots();
    var stream3 = FirebaseFirestore.instance.collection(cat3).snapshots();

      return StreamBuilder(
        stream: stream1,
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot1) {
          return StreamBuilder(
            stream: stream2,
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot2) {
              return StreamBuilder(
                stream: stream3,
                builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot3) {
                  return Container(
                    color: Colors.blue[100],
                    child: ListView(
                      children: [
                        Center(
                          child: Text('Your 10 Picks', style: GoogleFonts.jost(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 40,
                          ),)
                        ),
                        Pics(streamSnapshot1, 0, "/CapeMay", context),
                        Pics(streamSnapshot1, 1 , "/CapeMay", context),
                        Pics(streamSnapshot1, 3,  "/CapeMay", context),
                        Pics(streamSnapshot1, 4,  "/CapeMay", context),
                        Pics(streamSnapshot2, 6,  "/CapeMay", context),
                        Pics(streamSnapshot2, 5,  "/CapeMay", context),
                        Pics(streamSnapshot2, 9,  "/CapeMay", context),
                        Pics(streamSnapshot3, 1,  "/CapeMay", context),
                        Pics(streamSnapshot3, 2,  "/CapeMay", context),
                        Pics(streamSnapshot3, 3,  "/CapeMay", context),
                            ]),
                  );
                        }
                        );
    });
    });
    }
  }

/*

Right now I can pull data from 1 collection, listing all values

I want to pull a top 10 depending on the users interests

8 categories in total
top 10 list


if pick 1 category then category list = the 1 cat picked
10 will be randomly selected from that category


if pick 2 category then category list = the 2 cat picked
5 will be randomly selected from that category 1
5 will be randomly selected from that category 2


if pick 3 category then category list = the 3 cat picked
3 will be randomly selected from that category 1
3 will be randomly selected from that category 2
4 will be randomly selected from that category 3

if pick 4 category then category list = the 4 cat picked
2 will be randomly selected from that category 1
2 will be randomly selected from that category 2
3 will be randomly selected from that category 3
3 will be randomly selected from that category 4

if pick 5 category then category list = the 5 cat picked
2 will be randomly selected from that category 1
2 will be randomly selected from that category 2
2 will be randomly selected from that category 3
2 will be randomly selected from that category 4
2 will be randomly selected from that category 5

if pick 6 category then category list = the 6 cat picked
1 will be randomly selected from that category 1
1 will be randomly selected from that category 2
2 will be randomly selected from that category 3
2 will be randomly selected from that category 4
2 will be randomly selected from that category 5
2 will be randomly selected from that category 6

if pick 7 category then category list = the 7 cat picked
1 will be randomly selected from that category 1
1 will be randomly selected from that category 2
1 will be randomly selected from that category 3
1 will be randomly selected from that category 4
2 will be randomly selected from that category 5
2 will be randomly selected from that category 6
2 will be randomly selected from that category 7

if pick 8 category then category list = the 8 cat picked
1 will be randomly selected from that category 1
1 will be randomly selected from that category 2
1 will be randomly selected from that category 3
1 will be randomly selected from that category 4
1 will be randomly selected from that category 5
1 will be randomly selected from that category 6
2 will be randomly selected from that category 7
2 will be randomly selected from that category 8




 */}
