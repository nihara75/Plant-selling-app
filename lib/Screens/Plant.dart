import 'package:flutter/material.dart';

class PlantList extends StatefulWidget {


  @override
  _PlantListState createState() => _PlantListState();
}

class _PlantListState extends State<PlantList> {

  ScrollController sc;
  List<String> ab = [
    'Aloe vera is a succelent plant of the genus Aloe. I\'ts medicinal uses and air purifying ability make it the plant that you shouldn\'t live without.',
    'Some other description',
    'Third description'
    'Fourth description'
  ];
String desc;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sc = ScrollController();
    sc.addListener(changedesc);
    setState(() {
      desc = ab[0];

    });
  }

  changedesc() {
    var value = sc.offset.round();
    var descIndex = (value / 150).round();
    print(value);
    setState(() {
      desc = ab[descIndex];

    });

  }
  @override
  Widget build(BuildContext context) {

    return
    
    
        Column(

          children: [Container(
            height: 300.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              controller: sc,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Plant(
                      image: "assets/image_1.png",
                      name: "ALOE VERA",
                      price: "\$15",
                      country: "INDIA"),
                ),
               Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Plant(image: "assets/img_main.png",
                      name: "ALOE VERA",
                      price: "\$15",
                      country: "INDIA"),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Plant(image: "assets/image_3.png",
                      name: "ALOE VERA",
                      price: "\$15",
                      country: "INDIA"),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Plant(image: "assets/image_2.png",
                      name: "ALOE VERA",
                      price: "\$15",
                      country: "INDIA"),
                )
              ],
            ),
          ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Description",style:TextStyle(fontWeight: FontWeight.bold,fontFamily:'EBGaramond',fontSize: 17.0 )),
            ),

            Padding(

              padding: const EdgeInsets.all(20.0),
              child: Text('$desc',style:TextStyle(color:Colors.black54)),
            ),]
        );




  }
}

class Plant extends StatelessWidget {
  const Plant({Key key, this.image, this.name, this.price, this.country})
      : super(key: key);
  final String image;
  final String name;
  final String price;
  final String country;

  @override
  Widget build(BuildContext context) {
    return
       Container(
         width: MediaQuery.of(context).size.width * 0.4,


        child:Column(
          children: <Widget>[
            Stack(alignment:Alignment.center,children: [
              Image.asset(image),
              Padding(
                padding: const EdgeInsets.only(bottom:150),
                child: Container(
                    width: 50.0,
                    height: 50.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius:BorderRadius.circular(25.0),color: Color(0xFF0C9869).withOpacity(0.5) ),
                    child: Center(
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ))),
              )
            ]),
            Container(

              decoration:BoxDecoration(color:Colors.white,borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20.0),bottomRight:Radius.circular(20)),boxShadow: [
                BoxShadow(
                    offset: Offset(1, 15),
                    blurRadius: 50,
                    color: Colors.grey.withOpacity(0.5)),
              ],),
              child: Row(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RichText(text:TextSpan(children:[TextSpan(text:"$name\n",style:TextStyle(fontFamily:'EBGaramond',color:Colors.black  )),
                    TextSpan(text:"$country",style:TextStyle(fontFamily:'EGGaramond',color:Color(0xFF0C9869) ))])),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("$price",style: TextStyle(fontFamily:'EGGaramond',color:Color(0xFF0C9869) ),),
                )

              ]),
            ),

          ],
        ),
       );

  }
}

