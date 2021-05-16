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
        body: ListView(children: <Widget>[
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                InkWell(
                  onTap: () {},
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
