import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
        },
        tooltip: 'Go homepage',   //있어도되고없어도되나?
        label: Text('Home'),
        icon: Icon(Icons.home),
      ),
      appBar: AppBar(
        title: Text("MainPage"),
      ),
      body: Container(

        child:
        Center(child: FlatButton(onPressed: () {
        }, child: Text("Logout"))),
      ),
    );
  }
}
