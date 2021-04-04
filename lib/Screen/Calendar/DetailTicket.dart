import 'package:flutter/material.dart';
import 'package:CABRIVE/constants.dart';

class DetailTicket extends StatefulWidget {
  DetailTicket({Key key}) : super(key: key);

  @override
  _DetailTicketState createState() => _DetailTicketState();
}

class _DetailTicketState extends State<DetailTicket> {
  String yellow = "";
  String green ="";
  String perple = "";
  String red = "";
  String blue = "";
  String pink = "";
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    print(height);
    final width = MediaQuery.of(context).size.width;
    print(width);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), 
          onPressed: (){            
            Navigator.pop(context);
          }
        ),
        centerTitle: true,
        title: Text("BUY TICKET"),
      ),
      body: Container(
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Please Select Zone",
                    style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16, color: kFontPrimaryColor
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: height*0.34,
                  //color: kInputSearchColor,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: kInputSearchColor,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: yellow == "yellow" 
                    ?Image.asset(
                      "assets/images/Stadium-2.png",
                      fit: BoxFit.fill,
                    )
                    :Image.asset(
                      "assets/images/Stadium-1.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "REMARK",
                    style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18, color: kFontPrimaryColor
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: width*0.38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "ZONE",
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  yellow = "yellow";
                                });
                              },
                              child: Container(
                                height: 20,
                                width: 60,
                                color: Colors.yellow[800],
                              ),
                            ),
                            Text(
                              "120",
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        height: 50,
                        width: width*0.38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "ZONE",
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 60,
                              color: Colors.greenAccent,
                            ),
                            Text(
                              "150",
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        height: 50,
                        width: width*0.38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "ZONE",
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 60,
                              color: Colors.purple,
                            ),
                            Text(
                              "200",
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: width*0.38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "ZONE",
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 60,
                              color: Colors.redAccent[700],
                            ),
                            Text(
                              "200",
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        height: 50,
                        width: width*0.38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "ZONE",
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 60,
                              color: Colors.blue,
                            ),
                            Text(
                              "450",
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        height: 50,
                        width: width*0.38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "ZONE",
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 60,
                              color: Colors.pink[200],
                            ),
                            Text(
                              "200",
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "SELETE ZONE",
                    style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18, color: kFontPrimaryColor
                    ),
                  ),
                  Text(
                    "SELETE NUMBER",
                    style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18, color: kFontPrimaryColor
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: width*0.38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "ZONE",
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                              ),
                            ),
                            Stack(
                              fit: StackFit.passthrough,
                              children: [
                                Container(
                                  height: 40,
                                  width: 90,
                                  //color: kInputSearchColor,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      //color: kInputSearchColor,
                                    ),
                                  ),
                                  child: Container(
                                    // height: 40,
                                    // width: 88,
                                    color: kInputSearchColor,
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  bottom: 10,
                                  right: 15,
                                  left: 15,
                                  child: Container(
                                    height: 20,
                                    width: 60,
                                    color: Colors.yellow[800],
                                  ),
                                ),
                              ]                            
                            ),
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: width*0.38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "NUMBER",
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14, color: kFontPrimaryColor
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 90,
                              decoration: BoxDecoration(
                                color: kInputSearchColor.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: TextFormField(
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.zero
                                  ),
                                  
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
      ),
    );
  }
}