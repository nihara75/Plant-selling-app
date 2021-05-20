import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Plant.dart';

class Feature extends StatefulWidget {
  const Feature({Key key}) : super(key: key);

  @override
  _FeatureState createState() => _FeatureState();
}

class _FeatureState extends State<Feature> with SingleTickerProviderStateMixin {
  TabController tabc;
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    tabc = TabController(vsync: this, length: 3);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawerEnableOpenDragGesture: false,
        drawer: Container(
          width:250,
          child: Drawer(
              child: ListView(children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xFF0C9869),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Green Shop',style:TextStyle(fontWeight: FontWeight.bold,fontFamily:'EBGaramond' ,fontSize: 30,color: Colors.white)),
                  ),
                ),
                Card(
                  color:Color(0xFF0C9869),
                  shadowColor:Colors.grey,
                  elevation: 5,
                  child: ListTile(
                    leading:Icon(Icons.person_pin_circle_outlined,color: Colors.white,) ,
                    title: Text('Account',style:TextStyle(fontWeight: FontWeight.bold,fontFamily:'EBGaramond' ,fontSize: 20,color: Colors.white)),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                ),
                Card(
                  color: Color(0xFF0C9869),
               elevation: 5,
               shadowColor: Colors.grey,
               child: ListTile(
                 leading:Icon(Icons.list_alt_outlined,color:Colors.white),
                  title: Text('Orders',style:TextStyle(fontWeight: FontWeight.bold,fontFamily:'EBGaramond' ,fontSize: 20,color: Colors.white)),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                )),
                Card(
                    color: Color(0xFF0C9869),
                    elevation: 5,
                    shadowColor: Colors.grey,
                    child: ListTile(
                      leading:Icon(Icons.contact_phone_outlined,color:Colors.white),
                      title: Text('Contact',style:TextStyle(fontWeight: FontWeight.bold,fontFamily:'EBGaramond' ,fontSize: 20,color: Colors.white)),
                      onTap: () {
                        // Update the state of the app.
                        // ...
                      },
                    )),
                Card(
                    color: Color(0xFF0C9869),
                    elevation: 5,
                    shadowColor: Colors.grey,
                    child: ListTile(
                      leading:Icon(Icons.contact_support_outlined,color:Colors.white),
                      title: Text('Suggestions',style:TextStyle(fontWeight: FontWeight.bold,fontFamily:'EBGaramond' ,fontSize: 20,color: Colors.white)),
                      onTap: () {
                        // Update the state of the app.
                        // ...
                      },
                    )),
              ])),
        ),
        body: ListView(children: <Widget>[
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                InkWell(
                  onTap: () {
                    _scaffoldKey.currentState.openDrawer();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                        child: Icon(Icons.menu, color: Colors.grey, size: 30)),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Icon(Icons.shopping_cart_outlined,
                          color: Colors.grey, size: 30),
                    ),
                  ),
                )
              ])),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Featured',
                style: TextStyle(
                    color: Color(0xFF0C9869),
                    fontFamily: 'EBGaramond',
                    fontWeight: FontWeight.bold,
                    fontSize: 35)),
          ),
          TabBar(
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              isScrollable: true,
              controller: tabc,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              tabs: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Tab(
                      child: Text('Top',
                          style: TextStyle(
                              fontSize: 20, fontFamily: 'EBGaramond'))),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Tab(
                      child: Text('Outdoor',
                          style: TextStyle(
                              fontSize: 20, fontFamily: 'EBGaramond'))),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Tab(
                      child: Text('Indoor',
                          style: TextStyle(
                              fontSize: 20, fontFamily: 'EBGaramond'))),
                )
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 100.0,
              child: TabBarView(
                controller: tabc,
                children: [PlantList(), PlantList(), PlantList()],
              )),
        ]),
      ),
    );
  }
}


