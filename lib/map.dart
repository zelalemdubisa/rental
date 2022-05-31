import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:sheger_rental/exports.dart';
class MapScreen extends StatefulWidget {

  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          _mapSection(),
          Positioned(
            top: 60,
            child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Ayalkebet Zelalem",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        Text("Personal  discount available",style: TextStyle(color: Colors.grey ),)
                      ],
                    ),
                    Container(

                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),
                        image: DecorationImage(
                          image: new AssetImage('assets/image/dube.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                          ),
                    )
                  ],
                )
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                    color: Colors.black
                ),
              )),
          Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                    color: Colors.white
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("24-26 Dec,2020",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                              Text("\$ 2100 / Day",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.6,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Color(0xfff4f5f5))

                                ),
                                child: Center(child: Text("416 Brodway St,New York,1556",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                              ),
                              Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                    color: Color(0xfffef4e6),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Color(0xfff4f5f5))
                                ),
                                child: Icon(Icons.calendar_today,color:Colors.black),
                              )
                            ],
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => MyApp()));
                            },
                            child: Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Center(child: Text("Next",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Positioned(
                        top: -45,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width ,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Rolls-Royce Cullinan",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                              Container(
                                width: 60,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.amber,
                                ),
                                child: Text("New",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                              )
                            ],),
                        ))
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

Widget _mapSection() {
  const String token =
      'pk.eyJ1IjoibmF0bmFlbC1iZXJoYW51IiwiYSI6ImNqdnl6N2F1ZTBqaGIzenJwMTFmYm0yZHQifQ.QpIphnCEI1iKz4jh1saCzw';

  return Expanded(
    child: MapboxMap(
      accessToken: token,
      initialCameraPosition: CameraPosition(
          zoom: 15, target: LatLng(9.040446373710195, 38.761511026557955)),
      onMapCreated: (MapboxMapController controller) {
        // handle redrawing everything
      },
    ),
  );
}
