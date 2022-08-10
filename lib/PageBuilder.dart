
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nj_travels_arushi_2/Sign_in.dart';
import 'package:provider/provider.dart';
import 'Logged_In.dart';
import 'background classes/GoogleSignInProvider.dart';

class PageBuilder extends StatefulWidget {
  const PageBuilder({Key? key}) : super(key: key);

  @override
  _PageBuilderState createState() => _PageBuilderState();
}

class _PageBuilderState extends State<PageBuilder> {
  @override
  Widget build(BuildContext context)
 => Scaffold(
  body: ChangeNotifierProvider(
    create: (context) => GoogleSignInProvider(),
    child: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        final provider = Provider.of<GoogleSignInProvider>(context);
        if (provider.isSigningIn) {
          return buildLoading();
        } else if (snapshot.hasData) {
          return Logged_In();
        } else {
          return Sign_In();
        }
      },
    ),
  ),
);

Widget buildLoading() => Container(
  color: Colors.blue[100],
  child: Center(child: CircularProgressIndicator()),
);
}


