import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;

class mypage extends StatelessWidget {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile",
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {

  TextStyle _style(){
    return TextStyle(
        fontWeight: FontWeight.bold
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Name"),
            SizedBox(height: 4,),
            Text("O ggi", style: _style(),),
            SizedBox(height: 16,),

            Text("Email", style: _style(),),
            SizedBox(height: 4,),
            Text("ohs@gmail.com"),
            SizedBox(height: 16,),

            Text("Location", style: _style(),),
            SizedBox(height: 4,),
            Text("Konkuk univ, Korea"),
            SizedBox(height: 16,),

            Text("Language", style: _style(),),
            SizedBox(height: 4,),
            Text("English, Korean"),
            SizedBox(height: 16,),

            Text("Occupation", style: _style(),),
            SizedBox(height: 4,),
            Text("Student"),
            SizedBox(height: 16,),

            Divider(color: Colors.grey,)
          ],
        ),
      ),
    );
  }
}
final String url = "http://chuteirafc.cartacapital.com.br/wp-content/uploads/2018/12/15347041965884.jpg";

class CustomAppBar extends StatelessWidget
    with PreferredSizeWidget{

  @override
  Size get preferredSize => Size(double.infinity, 320);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
            color: Colors.redAccent,
            boxShadow: [
              BoxShadow(
                  color: Colors.red,
                  blurRadius: 20,
                  offset: Offset(0, 0)
              )
            ]
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
//                IconButton(
//                  icon: Icon(Icons.menu, color: Colors.white,),
//                  onPressed: (){},
//                ),
//
//                Text("Profile", style: TextStyle(
//                  color: Colors.white,
//                  fontSize: 16,
//                ),),
//
//                IconButton(
//                  icon: Icon(Icons.notifications, color: Colors.white,),
//                  onPressed: (){},
//                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Column(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(url)
                            )
                        ),
                      ),
                      SizedBox(height: 16,),
                      Text("O ggi", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),)
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      Text("Selling", style: TextStyle(
                          color: Colors.white
                      ),),
                      Text("8", style: TextStyle(
                          fontSize: 26,
                          color: Colors.white
                      ),)
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      Text("Sold", style: TextStyle(
                          color: Colors.white
                      ),),
                      Text("12", style: TextStyle(
                          fontSize: 26,
                          color: Colors.white
                      ),)
                    ],
                  ),


                  Column(
                    children: <Widget>[
                      Text("Wish", style: TextStyle(
                          color: Colors.white
                      ),),
                      Text("4", style: TextStyle(
                          fontSize: 26,
                          color: Colors.white
                      ),)
                    ],
                  ),
                ],
              ),
            ),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.end,
//              children: <Widget>[
//
//                Column(
//                  children: <Widget>[
//                    Text("Savings", style: TextStyle(
//                        color: Colors.white
//                    ),),
//                    Text("20K", style: TextStyle(
//                        color: Colors.white,
//                        fontSize: 24
//                    ),)
//                  ],
//                ),
//
//                SizedBox(width: 32,),
//
//                Column(
//                  children: <Widget>[
//                    Text("July Goals",
//                      style: TextStyle(
//                          color: Colors.white
//                      ),),
//                    Text("50K", style: TextStyle(
//                        color: Colors.white,
//                        fontSize: 24
//                    ))
//                  ],
//                ),
//
//                SizedBox(width: 16,)
//
//              ],
//            ),
            SizedBox(height: 8,),

            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: (){
                  print("//TODO: button clicked");
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 24, 16, 0),
                  child: Transform.rotate(
                    angle: (math.pi * 0),
                    child: Container(
                      width: 110,
                      height: 32,
                      child: Center(child: Text("Edit Profile"),),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20
                            )
                          ]
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
    Path p = Path();

    p.lineTo(0, size.height-70);
    p.lineTo(size.width, size.height);

    p.lineTo(size.width, 0);

    p.close();

    return p;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}