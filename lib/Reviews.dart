import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reviews extends StatefulWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {


  CollectionReference ADM = FirebaseFirestore.instance.collection("ReviewsAMD");
  TextEditingController Initials = new TextEditingController();
  TextEditingController Review = new TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          centerTitle: true,
          title:Text('Reviews', style: GoogleFonts.raleway(
              decoration: TextDecoration.none,
              color: Colors.black,
              fontSize: 30
          )),
          backgroundColor: Colors.blue[100],

        ),
        body:
        FutureBuilder<QuerySnapshot>(
            future: ADM.get(),
            builder: (context, snapshot) {
              return ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: snapshot.data?.docs.length,
                  itemBuilder: (ctx, index) =>
                      Card(
                        color: Colors.white,
                        child: Column(
                            children: <Widget>[
                              // First child
                              CircleAvatar(
                                maxRadius: 40,
                                backgroundImage: NetworkImage(
                                    snapshot.data?.docs[index]['pic']
                                ),
                              ),
                              Center(
                                child: Text( snapshot.data?.docs[index]['rev'] ,
                                    style:  GoogleFonts.raleway(
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                        fontSize: 15
                                    )
                                  // Add text's style here
                                ),
                              ),
                            ]
                        ),
                      ));})

    );
  }
}

