import 'package:flutter/material.dart';
import 'items.dart';
import 'barcode.dart';
import 'map.dart';
import 'messenger.dart';
import 'mypage.dart';
import 'package:flutter/cupertino.dart';





class home extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}




class _MyAppState extends State<home> {



  int _currentIndex = 0;


  Widget callPage(int currentIndex){

    switch (currentIndex) {
      case 0: return itemList();
      case 1: return map();
      case 2: return barcode();
      case 3: return messenger();
      case 4: return mypage();

      break;

      default: return itemList();
    }

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

          body: callPage(_currentIndex),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (value){
              _currentIndex = value;
              setState(() {
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.apps, color: Colors.blue,),
                  title: Text('Items', style: TextStyle(color: Colors.blue))
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.map, color: Colors.green),
                  title: Text('Map', style: TextStyle(color: Colors.green))
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.camera_alt, color: Colors.yellow),
                  title: Text('Barcode', style: TextStyle(color: Colors.yellow),)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.textsms, color: Colors.purpleAccent),
                  title: Text('Messenger', style: TextStyle(color: Colors.purpleAccent))
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle, color: Colors.pink),
                  title: Text('My Page', style: TextStyle(color: Colors.pink))
              ),
            ],
          ) ,
        )
    );
  }
}


