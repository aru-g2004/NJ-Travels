import 'package:flutter/material.dart';
import 'package:nj_travels_arushi_2/AAReviews.dart';
import 'package:nj_travels_arushi_2/WriteAReview.dart';
import 'package:nj_travels_arushi_2/AdventureAquarium.dart';
import 'package:nj_travels_arushi_2/AmericanDreamMall.dart';
import 'package:nj_travels_arushi_2/Logged_In.dart';
import 'package:nj_travels_arushi_2/PageBuilder.dart';
import 'package:nj_travels_arushi_2/Sign_in.dart';
import 'package:nj_travels_arushi_2/SplashScreen.dart';
import 'package:nj_travels_arushi_2/WhatDoYouLike.dart';
import 'Reviews.dart';
import 'Top10.dart';
import 'package:firebase_core/firebase_core.dart';

import 'WriteAReviewAA.dart';


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );

  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Poppins'),
    debugShowCheckedModeBanner: false,
    initialRoute: '/splash',
    routes: {
      '/top10': (context) => Top10(),
      '/wdyl': (context) => WhatDoYouLike(),
      '/pb': (context) => PageBuilder(),
      '/logIn': (context) => Logged_In(),
      '/signIn': (context) => Sign_In(),
      '/splash': (context) => SplashScreen(),
      '/CapeMay': (context) => AmericanDreamMall(),
      '/AMDrev': (context) => Reviews(),
      '/AMDsub': (context) => WriteAReview(),
      '/AArev' :(context) => AAReviews(),
      '/AdvAq' : (context) => AdventureAquarium(),
      '/AAsub': (context) => WriteAReviewAA(),





    },
  ));
}
