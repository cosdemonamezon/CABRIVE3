import 'package:CABRIVE/Screen/Stadium/StadiumDetail.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:CABRIVE/Screen/Stadium/FnbStadium.dart';

class Detailmath extends StatefulWidget {
  Detailmath({Key key}) : super(key: key);

  @override
  _DetailmathState createState() => _DetailmathState();
}

class _DetailmathState extends State<Detailmath> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), 
          onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => StadiumDetail()), (route) => false);
          }
        ),
        centerTitle: true,
        title: Text("DETAIL"),
      ),
      body: Container(
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 120,
              //color: Colors.amber,
              decoration: BoxDecoration(
                color: kInputSearchColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18),
                ),
              ),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Center(
                          child: Text(
                            "10:00AM",
                            style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16, color: kFontPrimaryColor
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            Container(
                              height: 69,
                              width: 45,
                              //color: Colors.amber,
                              //child: SvgPicture.asset("assets/icons/Image 5.svg"),
                              child: Image.asset(
                                "assets/logo/Image5.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                "AGEN",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12, color: kFontPrimaryColor
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "VS",
                        style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 16, color: kFontPrimaryColor
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                            child: Column(
                              children: [
                                Container(
                                  height: 69,
                                  width: 60,
                                  //color: Colors.pink,
                                  child: Image.asset(
                                    "assets/logo/surface1.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    "BRIVE",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 12, color: kFontPrimaryColor
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text(
                  "COMPETITION STATISTICS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, color: kFontPrimaryColor
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: [
                  Text(
                    "Lorem Ipsum",
                    style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 126,
                  color: Colors.red,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        left: 10,
                        top: 5,
                        child: Text(
                          "40%",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14, color: kFontPrimaryColor
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 242,
                  color: Colors.blue,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        right: 10,
                        top: 5,
                        child: Text(
                          "60%",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14, color: kFontPrimaryColor
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: [
                  Text(
                    "Lorem Ipsum",
                    style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 184,
                  color: Colors.red,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        left: 10,
                        top: 5,
                        child: Text(
                          "50%",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14, color: kFontPrimaryColor
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 184,
                  color: Colors.blue,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        right: 10,
                        top: 5,
                        child: Text(
                          "50%",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14, color: kFontPrimaryColor
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: [
                  Text(
                    "Lorem Ipsum",
                    style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 165,
                  color: Colors.red,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        left: 10,
                        top: 5,
                        child: Text(
                          "45%",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14, color: kFontPrimaryColor
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 203,
                  color: Colors.blue,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        right: 10,
                        top: 5,
                        child: Text(
                          "55%",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14, color: kFontPrimaryColor
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text(
                  "FNB STADUIM",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, color: kFontPrimaryColor
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  //child: SvgPicture.asset("assets/images/Stadium-Art.svg"),
                  child: Image.asset("assets/images/Stadium-Art.png"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 141,
                    width: 136,
                    decoration: BoxDecoration(
                      color: kInputSearchColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                        bottomLeft: Radius.circular(18),
                        bottomRight: Radius.circular(18),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "VR Seat ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                                ),
                              ),
                              Text(
                                "25,890",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16, color: kFontPrimaryColor
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Busy",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14, color: Colors.red[900]
                                ),
                              ),
                              Text(
                                "19,345",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16, color: Colors.red[900]
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Available",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16, color: Colors.green[700]
                                ),
                              ),
                              Text(
                                "6,545",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16, color: Colors.green[700]
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Container(
              height: size.height * 0.08,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: kCicleColor,
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => FnbStadium()));
                },
                child: Text(
                  "WATCH NOW",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kTextButtonColor)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}