import 'package:firebase_auth/firebase_auth.dart';
import 'package:bookavenue/data/join_or_login.dart';
import 'package:bookavenue/screens/login.dart';
import 'package:bookavenue/screens/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Splash()

    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FirebaseUser>(
        stream: FirebaseAuth.instance.onAuthStateChanged,
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return ChangeNotifierProvider<JoinOrLogin>.value(
                value: JoinOrLogin(),
                child: AuthPage());
          }else{
            return MainPage();
          }
        }
    );
  }
}