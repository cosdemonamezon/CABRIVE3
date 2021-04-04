import 'package:CABRIVE/Screen/Stadium/Detailmath.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FnbStadium1 extends StatefulWidget {
  FnbStadium1({Key key}) : super(key: key);

  @override
  _FnbStadium1State createState() => _FnbStadium1State();
}

class _FnbStadium1State extends State<FnbStadium1> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), 
          onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Detailmath()), (route) => false);
          }
        ),
        centerTitle: true,
        title: Text("FNB STADIUM"),
      ),
      body: Container(
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Image.asset(
              "assets/images/Stadium-1.png",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Choose Seat",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 400,              
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
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 38,
                          width: 35,
                          //color: Colors.red,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),                      
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),                     
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),                      
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),                     
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),                      
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),

                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
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
    );
  }
}