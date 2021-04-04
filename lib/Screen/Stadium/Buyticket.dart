import 'package:CABRIVE/Screen/Home/HomeScreen.dart';
import 'package:CABRIVE/alert.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Buyticket extends StatefulWidget {
  Buyticket({Key key}) : super(key: key);

  @override
  _BuyticketState createState() => _BuyticketState();
}

class _BuyticketState extends State<Buyticket> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), 
          onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomeScreen()), (route) => false);
          }
        ),
        centerTitle: true,
        title: Text("BUY TICKET"),
      ),
      body: Container(
          height: height,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  Text(
                    "Ticket Detail", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kFontPrimaryColor)
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text(
                    "Zone", 
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kFontPrimaryColor)
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 13,
                    width: 40,
                    color: kContainer,
                  ),
                  SizedBox(width: 5,),
                  Text(
                    ", number 10", 
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kFontPrimaryColor)
                  ),
                  SizedBox(width: 170,),
                  Text(
                    "120", 
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kFontPrimaryColor)
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Divider(thickness: 3, color: kInputSearchColor,),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text(
                    "Payment Detail", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kFontPrimaryColor)
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: kInputSearchColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 41,
                        decoration: BoxDecoration(                          
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/icons/wallet-01.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Wallet",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: kFontPrimaryColor),
                                  ),
                                  Icon(Icons.check_circle, color: kContainer,),
                                ],
                              ),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: kFontPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: kInputSearchColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 41,
                        decoration: BoxDecoration(                          
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/icons/mastercard-01.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "**** **** **** 4352",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: kFontPrimaryColor),
                                  ),
                                  
                                ],
                              ),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: kFontPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: kInputSearchColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 41,
                        decoration: BoxDecoration(                          
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/icons/visa-01.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "**** **** **** 4132",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: kFontPrimaryColor),
                                  ),
                                  
                                ],
                              ),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: kFontPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Center(
                child: Text(
                  "Add card",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: kContainer),
                ),
              ),
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: kContainer),
                  ),
                  Text(
                    "120",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: kContainer),
                  ),
                ],
              ),
              SizedBox(height: 12,),
              Container(
                height: size.height * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: kButtonColor,
                ),
                child: FlatButton(
                  onPressed: () {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) => faceScandialog(
                        touchID,
                        subTouchID,
                        secoundTouchID,
                        facePic,
                        context,
                      ),
                    );
                    // Navigator.push(
                    //   context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text(
                    "BUY NOW",
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