import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Feature.dart';
/*import 'package:flutter_svg/flutter_svg.dart';


import 'login.dart';
import 'signup.dart';*/

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(children: <Widget>[
        Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/3,
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 56,
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFF0C9869),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60.0),
                          bottomRight: Radius.circular(60.0))),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          InkWell(
                            onTap: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Feature()),
                            );},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 10.0),
                              child: Text('Login',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      fontSize: 15)),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 10.0),
                              child: Text('Sign Up',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      fontSize: 15)),
                            ),
                          )
                        ],
                      ),
                      SizedBox(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Text('Green Shop!!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    height: 54,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Color(0xFF0C9869).withOpacity(0.23))
                        ]),
                    child: Row(
                      children: [



                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Color(0xFF0C9869).withOpacity(0.5),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Icon(Icons.search, color: Color(0xFF0C9869)))
                      ],
                    )),
              ),
            ],
        ),
        SvgPicture.asset(
            'assets/Little_Dirt.svg',
            width: 200,
            height: 300,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: Center(
                child: Text("We bring your dream plants at your premises",
                    style: TextStyle(color: Color(0xFF0C9869),fontSize:30,fontFamily:'DancingScript'),textAlign: TextAlign.center,)),
        )
      ]),
          )),
    );
  }
}
