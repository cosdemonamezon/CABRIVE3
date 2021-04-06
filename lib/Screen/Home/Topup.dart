import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';

class Topup extends StatefulWidget {
  Topup({Key key}) : super(key: key);

  @override
  _TopupState createState() => _TopupState();
}

class _TopupState extends State<Topup> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;print(width);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kInputSearchColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), 
          onPressed: (){            
            Navigator.pop(context);
          }
        ),
        centerTitle: true,
        title: Text("TOP-UP"),
      ),
      body: Container(
        color: kInputSearchColor,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                height: height*0.41,
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
                    SizedBox(height: 15,),
                    Center(
                      child: Text(
                        "Approximate price",
                        style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 16, color: kFontPrimaryColor
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),

                    Center(
                      child: Text(
                        "1 USD ~ 36.65 EUR",
                        style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 25, color: kFontPrimaryColor
                        ),
                      ),
                    ),
                    SizedBox(height: 35,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Text(
                            "Amount to pay",
                            style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16, color: kFontPrimaryColor
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage("assets/images/download.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: Text(
                                  "USD",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 20, color: kFontPrimaryColor
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "1,000",
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20, color: kFontPrimaryColor
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 35,
                            width: 220,
                            //color: kFontSecondTextColor,
                            decoration: BoxDecoration(
                              color: kFontSecondTextColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    "100",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 13, color: kFontPrimaryColor
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                  child: VerticalDivider(thickness: 2, color: kContainer,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    "500",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 13, color: kFontPrimaryColor
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                  child: VerticalDivider(thickness: 2, color: kContainer,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    "1,000",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 13, color: kFontPrimaryColor
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                  child: VerticalDivider(thickness: 2, color: kContainer,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    "2,000",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 13, color: kFontPrimaryColor
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Text(
                            "Available",
                            style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16, color: kFontPrimaryColor
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 22,
                                backgroundImage: AssetImage("assets/c3.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: Text(
                                  "EUR",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 20, color: kFontPrimaryColor
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "360",
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20, color: kButtonColor
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text(
                " Lorem ipsum dolor sit amet, consectetur adipiscing elit, seddo eiusmod tempor incididunt ut labore et dolore magnaaliqua. Bibendum est ultricies integer quis. Iaculis urna idvolutpat lacus laoreet. Mauris vitae ultricies leo integermalesuada. Ac odio tempor orci dapibus ultrices in. Egestasdiam in arcu cursus euismod. Dictum fusce ut placerat orcinulla. Tincidunt ornare massa eget egestas purus viverraaccumsan in nisl. Tempor id eu nisl nunc mi ipsum faucibus.Fusce id velit ut tortor pretium. Massa ultricies mi quis",
                style: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 15, color: kInputColor
                ),
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
                        // Navigator.push(
                        //   context, MaterialPageRoute(builder: (context) => Wallet()));
                      },
                      child: Text(
                        "BUY",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kTextButtonColor)
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}