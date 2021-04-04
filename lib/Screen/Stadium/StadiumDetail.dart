import 'package:CABRIVE/Screen/Stadium/StadiumScreen.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:CABRIVE/Screen/Stadium/Detailmath.dart';
import 'package:CABRIVE/Screen/Stadium/Detailmath1.dart';

class StadiumDetail extends StatefulWidget {
  StadiumDetail({Key key}) : super(key: key);

  @override
  _StadiumDetailState createState() => _StadiumDetailState();
}

class _StadiumDetailState extends State<StadiumDetail> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), 
          onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => StadiumScreen()), (route) => false);
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
              height: 200,
              width: double.infinity,
              //color: Colors.red,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  // topLeft: Radius.circular(18),
                  // topRight: Radius.circular(18),
                  // bottomLeft: Radius.circular(18),
                  // bottomRight: Radius.circular(18),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/FIFA_World_Cup_2010_Mexico_VS_South_Africa.jpg"),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Text(
              "First National Bank Stadium or simply FNB Stadium, also known as Soccer City and The Calabash, is a football and Rugby union stadium located in Nasrec, bordering the Soweto area of Johannesburg, South Africa. The venue is managed by Stadium Management South Africa (SMSA) and is a home of Kaizer Chiefs F.C. in the South African Premier Soccer League as well as key fixtures for the South African national football team.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: kHintextColor),
            ),
            SizedBox(height: 40,),
            Container(
              height: 160,
              //color: Colors.red,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Detailmath()));
                    },
                    child: Container(
                      width: 220,                    
                      //color: kBackgroundColor,
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
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            top: 20,
                            left: 10,
                            child: Row(
                              children: [
                                Text(
                                  "8/02/2021,",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16, color: kFontPrimaryColor
                                  ),
                                ),
                                Text(
                                  "10:00AM",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16, color: kFontSecondTextColor
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Container(
                                    height: 21,
                                    width: 23,
                                    //color: Colors.orange,
                                    child: Text(
                                      "VS",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400, fontSize: 16, color: kFontPrimaryColor
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 69,
                                        width: 45,
                                        //color: Colors.pink,
                                        child: Image.asset(
                                          "assets/logo/surface1.png",
                                          fit: BoxFit.fill,
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
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Detailmath1()));
                    },
                    child: Container(
                      width: 220,                    
                      //color: kBackgroundColor,
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
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            top: 20,
                            left: 10,
                            child: Row(
                              children: [
                                Text(
                                  "24/02/2021,",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16, color: kFontPrimaryColor
                                  ),
                                ),
                                Text(
                                  "10:00AM",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16, color: kFontSecondTextColor
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 69,
                                        width: 45,
                                        //color: Colors.amber,
                                        //child: SvgPicture.asset("assets/icons/Image 5.svg"),
                                        child: Image.asset(
                                          "assets/logo/STADE_ROCHELAIS.png",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 5),
                                        child: Text(
                                          "LA ROCH.",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400, fontSize: 12, color: kFontPrimaryColor
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Container(
                                    height: 21,
                                    width: 23,
                                    //color: Colors.orange,
                                    child: Text(
                                      "VS",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400, fontSize: 16, color: kFontPrimaryColor
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 69,
                                        width: 45,
                                        //color: Colors.pink,
                                        child: Image.asset(
                                          "assets/logo/Image3.png",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 5),
                                        child: Text(
                                          "BAYONNE",
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}