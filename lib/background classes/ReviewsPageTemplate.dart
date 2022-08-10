// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../AmericanDreamMall.dart';
//
// class ReviewsPageTemplate extends StatefulWidget {
//   List<String> imgList;
//   List <String> review;
//
//
//   ReviewsPageTemplate({Key? key, required this.imgList, required this.review}) : super(key: key);
//
//   @override
//   _CarouselWithDotsPageState createState() => _CarouselWithDotsPageState();
// }
//
// class _CarouselWithDotsPageState extends State<ReviewsPageTemplate> {
//
//   String place = "";
//   int _current = 0;
//   TextEditingController Initials = new TextEditingController();
//   TextEditingController Review = new TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//
//
//     final List<Widget> imageSliders = widget.imgList
//         .map((item) => Stack(
//       children: [
//         Column(
//           // To centralize the children.
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               // First child
//               CircleAvatar(
//                 maxRadius: 40,
//                 backgroundImage: NetworkImage(
//                     item
//                 ),
//               ),
//               Text(
//                 review.elementAt(widget.imgList.indexOf(item)),
//                   style:  GoogleFonts.raleway(
//                       decoration: TextDecoration.none,
//                       color: Colors.black,
//                       fontSize: 15
//                   )
//                 // Add text's style here
//               ),
//             ]
//         ),
//       ],
//     ))
//         .toList();
//
//     return
//       SingleChildScrollView(
//
//         child: Column(
//           children: [
//             SizedBox(
//               height: 200,
//             ),
//             Padding(
//               padding: EdgeInsets.all(20),
//               child: Text(
//                 "Reviews",
//                   style:  GoogleFonts.raleway(
//                       decoration: TextDecoration.none,
//                       color: Colors.black,
//                       fontSize: 20
//                   )
//               ),
//             ),
//             Positioned (
//               child:MaterialButton(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(40)),
//                 color: Colors.lightBlueAccent,
//                 child: Text('Add your own +'),
//                 onPressed: () {
//                   showDialog(
//                       context: context,
//                       builder: (context) {
//                         return Dialog(
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(40)),
//                           child: Container(
//                             margin: EdgeInsets.all(40.0),
//                             child: Center(
//                               child: Column(
//                                 children:[
//                                   TextFormField(
//                                     controller: Initials,
//                                     decoration: InputDecoration(
//                                         hintText: "Initials"
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10.0,
//                                   ),
//                                   TextFormField(
//                                     controller: Review,
//                                     decoration: InputDecoration(
//                                         hintText: "Review",
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10.0,
//                                   ),
//                                   FlatButton(onPressed: () {
//                                     final user = FirebaseAuth.instance.currentUser;
//                                     Map <String,dynamic> data = {"Initials": user?.photoURL, "Review":Review.text};
//                                     FirebaseFirestore.instance.collection("AMD").add(data);
//                                   },
//                                     child: Text("Submit",
//                                         style:  GoogleFonts.raleway(
//                                         decoration: TextDecoration.none,
//                                         color: Colors.black,
//                                         fontSize: 15
//                                     )
//                                     ),
//                                     color: Colors.lightGreenAccent,
//
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         );
//                       });}, ),
//             ),
//             CarouselSlider(
//               items: imageSliders,
//               options: CarouselOptions(
//                   autoPlay: true,
//                   enlargeCenterPage: true,
//                   aspectRatio: 2,
//                   onPageChanged: (index, reason) {
//                     setState(() {
//                       _current = index;
//                     });
//                   }),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: widget.imgList.map((url) {
//                 int index = widget.imgList.indexOf(url);
//                 return Container(
//                   width: 8,
//                   height: 20,
//                   margin: EdgeInsets.symmetric(
//                     vertical: 10,
//                     horizontal: 3,
//                   ),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: _current == index
//                         ? Color.fromRGBO(0, 0, 0, 0.9)
//                         : Color.fromRGBO(0, 0, 0, 0.4),
//                   ),
//                 );
//               }).toList(),
//             )
//           ],
//         ),
//       );
//   }
// }
