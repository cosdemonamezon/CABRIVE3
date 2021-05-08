import 'package:CABRIVE/Screen/Stadium/Buyticket.dart';
import 'package:CABRIVE/alert.dart';
import 'package:flutter/material.dart';
import 'package:CABRIVE/constants.dart';

class DetailTicket extends StatefulWidget {
  DetailTicket({Key key}) : super(key: key);

  @override
  _DetailTicketState createState() => _DetailTicketState();
}

class _DetailTicketState extends State<DetailTicket> {
  String yellow = "";
  String green = "";
  String perple = "";
  String red = "";
  String blue = "";
  String pink = "";
  bool next = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    //print(height);
    final width = MediaQuery.of(context).size.width;
    //print(width);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
        centerTitle: true,
        title: Text("BUY TICKET"),
      ),
      body: Container(
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Please Select Zone",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: kFontPrimaryColor),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: height * 0.34,
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
                        ? Image.asset(
                            "assets/images/yellow.png",
                            fit: BoxFit.fill,
                          )
                        : green == "green"
                            ? Image.asset(
                                "assets/images/green.png",
                                fit: BoxFit.fill,
                              )
                            : red == "red"
                                ? Image.asset(
                                    "assets/images/red.png",
                                    fit: BoxFit.fill,
                                  )
                                : blue == "blue"
                                    ? Image.asset(
                                        "assets/images/blue.png",
                                        fit: BoxFit.fill,
                                      )
                                    : perple == "perple"
                                        ? Image.asset(
                                            "assets/images/perple.png",
                                            fit: BoxFit.fill,
                                          )
                                        : Image.asset(
                                            "assets/images/Stadium-1.png",
                                            fit: BoxFit.fill,
                                          ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "REMARK",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: kFontPrimaryColor),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: width * 0.38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "ZONE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: kFontPrimaryColor),
                            ),
                            GestureDetector(
                              onTap: () {
                                // setState(() {
                                //   yellow = "yellow";
                                // });
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
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: kFontPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: width * 0.38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "ZONE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: kFontPrimaryColor),
                            ),
                            Container(
                              height: 20,
                              width: 60,
                              color: Colors.greenAccent,
                            ),
                            Text(
                              "150",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: kFontPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: width * 0.38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "ZONE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: kFontPrimaryColor),
                            ),
                            Container(
                              height: 20,
                              width: 60,
                              color: Colors.purple,
                            ),
                            Text(
                              "200",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: kFontPrimaryColor),
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
                        width: width * 0.38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "ZONE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: kFontPrimaryColor),
                            ),
                            Container(
                              height: 20,
                              width: 60,
                              color: Colors.redAccent[700],
                            ),
                            Text(
                              "200",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: kFontPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: width * 0.38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "ZONE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: kFontPrimaryColor),
                            ),
                            Container(
                              height: 20,
                              width: 60,
                              color: Colors.blue,
                            ),
                            Text(
                              "450",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: kFontPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: width * 0.38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "ZONE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: kFontPrimaryColor),
                            ),
                            Container(
                              height: 20,
                              width: 60,
                              color: Colors.pink[200],
                            ),
                            Text(
                              "200",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: kFontPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "SELETE ZONE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: kFontPrimaryColor),
                  ),
                  Text(
                    "SELETE NUMBER",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: kFontPrimaryColor),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: width * 0.38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "ZONE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: kFontPrimaryColor),
                            ),
                            Stack(fit: StackFit.passthrough, children: [
                              Container(
                                height: 40,
                                width: width * 0.22,
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
                                child: GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (context) => selectdialog(),
                                    );
                                  },
                                  child: Container(
                                    height: 20,
                                    width: 60,
                                    color: yellow == "yellow"
                                        ? Colors.yellow[800]
                                        : green == "green"
                                            ? Colors.greenAccent
                                            : perple == "perple"
                                                ? Colors.purple
                                                : red == "red"
                                                    ? Colors.redAccent[700]
                                                    : blue == "blue"
                                                        ? Colors.blue
                                                        : pink == "pink"
                                                            ? Colors.pink[200]
                                                            : kLinkTextColor,
                                  ),
                                ),
                              ),
                            ]),
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
                        width: width * 0.38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "NUMBER",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: kFontPrimaryColor),
                            ),
                            Container(
                              height: 50,
                              width: width * 0.22,
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
                                      contentPadding: EdgeInsets.zero),
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
              SizedBox(
                height: 20,
              ),
              Container(
                height: size.height * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: next == true ? kCicleColor : kHintextColor,
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Buyticket()));
                  },
                  child: Text("NEXT",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kTextButtonColor)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  selectdialog() {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 4,
      backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.only(
            left: Constants.padding,
            top: Constants.avatarRadius + Constants.padding,
            right: Constants.padding,
            bottom: Constants.padding),
        margin: EdgeInsets.only(top: Constants.avatarRadius),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: kBackgroundColor,
            borderRadius: BorderRadius.circular(Constants.padding),
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
            ]),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "SELETE ZONE",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: kFontPrimaryColor),
              ),
            ),
            Container(
              height: 50,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "ZONE",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: kFontPrimaryColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        yellow = "yellow";
                        green = "";
                        perple = "";
                        red = "";
                        blue = "";
                        pink = "";
                        next = true;
                      });
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 30,
                      width: 200,
                      color: Colors.yellow[800],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "ZONE",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: kFontPrimaryColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        green = "green";
                        yellow = "";
                        perple = "";
                        red = "";
                        blue = "";
                        pink = "";
                        next = true;
                      });
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 30,
                      width: 200,
                      color: Colors.greenAccent,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "ZONE",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: kFontPrimaryColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        perple = "perple";
                        green = "";
                        yellow = "";
                        red = "";
                        blue = "";
                        pink = "";
                        next = true;
                      });
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 30,
                      width: 200,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "ZONE",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: kFontPrimaryColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        red = "red";
                        green = "";
                        yellow = "";
                        perple = "";
                        blue = "";
                        pink = "";
                        next = true;
                      });
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 30,
                      width: 200,
                      color: Colors.redAccent[700],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "ZONE",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: kFontPrimaryColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        blue = "blue";
                        green = "";
                        yellow = "";
                        perple = "";
                        red = "";
                        pink = "";
                        next = true;
                      });
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 30,
                      width: 200,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "ZONE",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: kFontPrimaryColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pink = "pink";
                        green = "";
                        yellow = "";
                        perple = "";
                        red = "";
                        blue = "";
                        next = true;
                      });
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 30,
                      width: 200,
                      color: Colors.pink[200],
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
