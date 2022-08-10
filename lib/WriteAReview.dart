import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WriteAReview extends StatefulWidget {

  WriteAReview({Key? key}) : super(key: key);

  @override
  _AddReviewsState createState() => _AddReviewsState();
}

class _AddReviewsState extends State<WriteAReview> {

  TextEditingController rev = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
           // leading: Icon(Icons.home_filled),
            title: Text("Add Your Own Review", style:  GoogleFonts.raleway(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontSize: 15
            )),
            backgroundColor: Colors.blue[100]

        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Write your own public review!",
                    style:  GoogleFonts.raleway(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontSize: 15
                    )
                ),
              ), Container(
                  margin: EdgeInsets.all(10.0),
                  child: Center(
                    child: Column(
                      children:[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: rev,
                            decoration: InputDecoration(
                                hintText: "Your Review"
                            ),
                          ),
                        ),
                        FlatButton(onPressed: () {

    final user = FirebaseAuth.instance.currentUser;

    if(user!=null) {
      String userPhoto = user.photoURL as String;

      Map <String, dynamic> data = {"pic":userPhoto,  "rev": rev.text};
      FirebaseFirestore.instance.collection("ReviewsAMD").add(data);
    }
                        },
                            child:
                            Text("Submit",
                                style:  GoogleFonts.raleway(
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    fontSize: 15
                                )),
                          color: Color.fromRGBO(172,217,106, 1),
                        ),
                      ],
                    ),
                  ),
                ),

            ]),
      );

  }
}