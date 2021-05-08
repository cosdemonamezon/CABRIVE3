import 'package:CABRIVE/Screen/Calendar/DetailTicket.dart';
import 'package:CABRIVE/Screen/Home/ShopDetail.dart';
import 'package:CABRIVE/Screen/Home/Trade.dart';
import 'package:CABRIVE/Screen/Home/Wallet.dart';
import 'package:CABRIVE/Screen/Profile/ProfileScreen.dart';
import 'package:CABRIVE/Screen/Widgets/NavigationBar.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  Shop({Key key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: kContainer,
        height: height,
        //padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundImage: AssetImage("assets/c7.png"),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text("OATPEERAPHAT",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: kFontPrimaryColor)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            color: kInputSearchColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              topRight: Radius.circular(14),
                              bottomLeft: Radius.circular(14),
                              bottomRight: Radius.circular(14),
                            ),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Wallet()));
                            },
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text("3,190",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: kFontPrimaryColor)),
                                ),
                                CircleAvatar(
                                  radius: 12,
                                  backgroundImage:
                                      AssetImage("assets/images/download.png"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              //SizedBox(height: 30,),
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShopDetail()));
                    },
                    child: Container(
                      height: height*0.8,
                      width: width,
                      child: Image.asset(
                        "assets/shop.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 170,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Trade()));
                      },
                      child: Container(
                        height: 300,
                        width: 120,
                        color: Color(0xFFF001117).withOpacity(0.0),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 160,
                    top: 110,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => DetailTicket()));
                      },
                      child: Container(
                        height: 300,
                        width: 110,
                        color: Color(0xFFF001117).withOpacity(0.0),
                      ),
                    ),
                  ),
                ],
              ),

              //SizedBox(height: 20,),

              // Container(
              //   height: height,
              //   width: width,
              //   child: Image.asset("assets/shop.png", fit: BoxFit.cover,),
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(title: "home"),
    );
  }
}
