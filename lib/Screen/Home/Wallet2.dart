import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';

class Wallet2 extends StatefulWidget {
  Wallet2({Key key}) : super(key: key);

  @override
  _Wallet2State createState() => _Wallet2State();
}

class _Wallet2State extends State<Wallet2> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    print(height);
    final width = MediaQuery.of(context).size.width;
    print(width);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kInputSearchColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), 
          onPressed: (){            
            Navigator.pop(context);
          }
        ),
        centerTitle: true,
        title: Text("MONEY"),
      ),
      body: Stack(
        children: [
          Container(
            color: kInputSearchColor,
            height: height,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Container(
                    height: 110,
                    width: 400,
                    //color: Colors.red,
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                        bottomLeft: Radius.circular(18),
                        bottomRight: Radius.circular(18),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: Row(
                            children: [
                              Text(
                                "My Wallet",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: kFontPrimaryColor
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(
                                    "3,190.00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35,
                                      color: kCicleColor),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(
                                    "USD",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: kFontPrimaryColor),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => Topup()));
                        },
                        child: Column(
                          children: [
                            Icon(Icons.local_atm, color: kFontPrimaryColor, size: 45,),
                            Text(
                              "Top-up",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16, color: kFontPrimaryColor
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Icon(Icons.payment, color: kFontPrimaryColor, size: 45,),
                          Text(
                            "Withdraw",
                            style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16, color: kFontPrimaryColor
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.repeat, color: kFontPrimaryColor, size: 45,),
                          Text(
                            "Exchange",
                            style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16, color: kFontPrimaryColor
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => History()));
                        },
                        child: Column(
                          children: [
                            Icon(Icons.history, color: kFontPrimaryColor, size: 45,),
                            Text(
                              "History",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16, color: kFontPrimaryColor
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),

                  Container(
                        height: 120,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 210,
                              //height: 100,
                              color: kInputSearchColor,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Positioned(
                                    bottom: 3.0,
                                    child: Container(
                                      height: 120,
                                      width: 210,
                                      //color: Colors.white,
                                      decoration: BoxDecoration(
                                        color: kBackgroundColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(18),
                                          topRight: Radius.circular(18),
                                          bottomLeft: Radius.circular(18),
                                          bottomRight: Radius.circular(18),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        //color: Colors.green,
                                        ),
                                    child: Stack(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            // Navigator.push(
                                            // context,
                                            // MaterialPageRoute(
                                            //     builder: (context) => PromotionScreen()));
                                          },
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(18),
                                              topRight: Radius.circular(18),
                                              bottomLeft: Radius.circular(18),
                                              bottomRight: Radius.circular(18),
                                            ),
                                            child: Image.asset(
                                              "assets/131935758_3624002657643100_2330089908347051597_n.jpg",
                                              width: 277,
                                              height: 180,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 210,
                              //height: 100,
                              color: kInputSearchColor,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Positioned(
                                    bottom: 3.0,
                                    child: Container(
                                      height: 120,
                                      width: 210,
                                      //color: Colors.white,
                                      decoration: BoxDecoration(
                                        color: kBackgroundColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(18),
                                          topRight: Radius.circular(18),
                                          bottomLeft: Radius.circular(18),
                                          bottomRight: Radius.circular(18),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        //color: Colors.green,
                                        ),
                                    child: Stack(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            // Navigator.push(
                                            // context,
                                            // MaterialPageRoute(
                                            //     builder: (context) => PromotionScreen()));
                                          },
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(18),
                                              topRight: Radius.circular(18),
                                              bottomLeft: Radius.circular(18),
                                              bottomRight: Radius.circular(18),
                                            ),
                                            child: Image.asset(
                                              "assets/131948114_3624474260929273_4187310378479201958_o.jpg",
                                              width: 277,
                                              height: 180,
                                              fit: BoxFit.cover,
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

                      SizedBox(height: 20,),
                      Container(
                        height: height*0.49,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kBackgroundColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18),
                            bottomLeft: Radius.circular(18),
                            bottomRight: Radius.circular(18),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Text(
                                      "Currency",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20, color: kFontPrimaryColor
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      "Buying",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20, color: kFontPrimaryColor
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      "Selling",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20, color: kFontPrimaryColor
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundImage: AssetImage("assets/c1.png"),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "USD",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 18, color: kFontPrimaryColor
                                              ),
                                            ),
                                            Text(
                                              "United States    ",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 11, color: kFontPrimaryColor
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "30.39",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20, color: kCicleColor
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Text(
                                    "30.45",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20, color: kCicleColor
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundImage: AssetImage("assets/c2.png"),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "GBP",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 18, color: kFontPrimaryColor
                                              ),
                                            ),
                                            Text(
                                              "United Kingdom",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 11, color: kFontPrimaryColor
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "42.30",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20, color: kCicleColor
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Text(
                                    "42.45",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20, color: kCicleColor
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundImage: AssetImage("assets/c3.png"),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "EUR",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 18, color: kFontPrimaryColor
                                              ),
                                            ),
                                            Text(
                                              "European Union",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 11, color: kFontPrimaryColor
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "36.65",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20, color: kCicleColor
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Text(
                                    "36.80",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20, color: kCicleColor
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundImage: AssetImage("assets/c4.png"),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "CHF",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 18, color: kFontPrimaryColor
                                              ),
                                            ),
                                            Text(
                                              "Switzerland       ",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 11, color: kFontPrimaryColor
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "33.40",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20, color: kCicleColor
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Text(
                                    "33.55",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20, color: kCicleColor
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundImage: AssetImage("assets/c5.png"),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "AUD",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 18, color: kFontPrimaryColor
                                              ),
                                            ),
                                            Text(
                                              "Australia            ",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 11, color: kFontPrimaryColor
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "23.35",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20, color: kCicleColor
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Text(
                                    "23.55",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20, color: kCicleColor
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                ],
              ),
            ),
          ),
          Positioned(
            height: height,
            width: width,
            // left: 5,
            // right: 5,  
            // top: 5,
            // bottom: 5,
            child: Image.asset("assets/images/coin.png"),
          )
        ],
      ),
    );
  }
}