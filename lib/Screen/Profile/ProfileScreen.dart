import 'package:CABRIVE/Screen/Profile/ProfileSetting.dart';
import 'package:CABRIVE/Screen/Widgets/NavigationBar.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile"),
        actions: [
          IconButton(
              iconSize: 32,
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileSetting()));
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  children: [
                    Container(
                      height: 270,
                      width: double.infinity,
                      //color: Colors.red,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 25,
                                  color: kIconColor,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Peeraphat Chatchavalhansa",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: kFontPrimaryColor),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.phone_android,
                                  size: 25,
                                  color: kIconColor,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "(443)763-7696",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: kFontPrimaryColor),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 25,
                                  color: kIconColor,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "roy.hayes@mail.com",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: kFontPrimaryColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      //bottom: 20,
                      top: 130,
                      // right: 30,
                      // left: 120,
                      child: Container(
                        height: 110,
                        width: 370,
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
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 35),
                              child: Row(
                                children: [
                                  Text(
                                    "My Wallet",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: kFontSecondTextColor),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "3,190.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          color: kCicleColor),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "USD",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: kCicleColor),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10.0,
                      top: 30.0,
                      child: Container(
                        height: 220,
                        width: 100,
                        //color: Colors.blue,
                        //child: SvgPicture.asset("assets/images/Men-shirt-white.svg"),
                        child: Image.asset("assets/images/Men-shirt-white.png"),
                      ),
                    ),
                  ],
                ),
              ),
              //Text("data"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * 0.08,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kButtonColor,
                      ),
                      child: FlatButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context, MaterialPageRoute(builder: (context) => HomeScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/icons/Top-up.svg"),
                            //Image.asset("assets/icons/wallet-01.png"),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Top-up",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: kTextButtonColor)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.08,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kButtonColor,
                      ),
                      child: FlatButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context, MaterialPageRoute(builder: (context) => HomeScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/icons/Top-up.svg"),
                            //Image.asset("assets/icons/wallet-01.png"),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Withdraw",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: kTextButtonColor)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment(0.2, 0.6),
                child: Container(
                  height: 362,
                  width: double.infinity,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Text("History",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: kFontPrimaryColor)),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Top-up to Wallet",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: kFontPrimaryColor)),
                                Text("23-01-2021 00:31",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: kFontPrimaryColor)),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("+3000.00",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: kFontPrimaryColor)),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("USD",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: kFontPrimaryColor)),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Center(
                          child: Divider(
                            color: kInputSearchColor,
                            height: 10,
                            thickness: 4,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Withdrawal",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: kFontPrimaryColor)),
                                Text("23-01-2021 00:31",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: kFontPrimaryColor)),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("-200.00",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: kFontPrimaryColor)),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("USD",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: kFontPrimaryColor)),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Center(
                          child: Divider(
                            color: kInputSearchColor,
                            height: 10,
                            thickness: 4,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Buy Seat",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: kFontPrimaryColor)),
                                Text("23-01-2021 00:31",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: kFontPrimaryColor)),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("-200.00",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: kFontPrimaryColor)),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("USD",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: kFontPrimaryColor)),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Center(
                          child: Divider(
                            color: kInputSearchColor,
                            height: 10,
                            thickness: 4,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Top-up to Wallet",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: kFontPrimaryColor)),
                                Text("23-01-2021 00:31",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: kFontPrimaryColor)),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("-420.00",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: kFontPrimaryColor)),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("USD",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: kFontPrimaryColor)),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Center(
                          child: Divider(
                            color: kInputSearchColor,
                            height: 10,
                            thickness: 4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(title: "profile"),
    );
  }
}
