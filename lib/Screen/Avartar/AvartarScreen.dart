import 'package:CABRIVE/Screen/Home/Shop.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter/services.dart';

import 'package:buttons_tabbar/buttons_tabbar.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:CABRIVE/Screen/Home/HomeScreen.dart';

import 'package:numberpicker/numberpicker.dart';

// final List<String> imgList = [
//   'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//   'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//   'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
//   'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
// ];

final List<String> imgList = [
  'assets/charactor/Men.png',
  'assets/charactor/Men2.png',
  'assets/charactor/Men3.png',
];

class AvartarScreen extends StatefulWidget {
  AvartarScreen({Key key}) : super(key: key);

  @override
  _AvartarScreenState createState() => _AvartarScreenState();
}

const double width = 350.0;
const double height = 60.0;
const double loginAlign = -1;
const double signInAlign = 1;
const Color selectedColor = Colors.white;
const Color normalColor = Colors.black54;

class _AvartarScreenState extends State<AvartarScreen> {
  final double _initFabHeight = 5.0;
  double _fabHeight;
  double _panelHeightOpen;
  double _panelHeightClosed = 5.0;

  bool editstate = false;
  int typestate = 1;

  String icon1 = 'icon-left1.png';
  String icon2 = 'icon-left2.png';
  String icon3 = 'icon-left3.png';

  double xAlign;
  Color loginColor;
  Color signInColor;

  @override
  void initState() {
    super.initState();
    _fabHeight = _initFabHeight;
    _setLoading(false, 0);
    xAlign = loginAlign;
    loginColor = selectedColor;
    signInColor = normalColor;
  }

  _setLoading(bool value, int type) {
    if (type == 1) {
      setState(() {
        icon1 = 'icon-left1-focus.png';
        icon2 = 'icon-left2.png';
        icon3 = 'icon-left3.png';
        imgList[0] = 'assets/charactor/Men_sh.png';
      });
    }
    if (type == 2) {
      setState(() {
        icon1 = 'icon-left1.png';
        icon2 = 'icon-left2-focus.png';
        icon3 = 'icon-left3.png';
        imgList[0] = 'assets/charactor/Men_sh.png';
      });
    }
    if (type == 3) {
      setState(() {
        icon1 = 'icon-left1.png';
        icon2 = 'icon-left2.png';
        icon3 = 'icon-left3-focus.png';
        imgList[0] = 'assets/charactor/Men_sh.png';
      });
    }
    setState(() {
      editstate = value;
      typestate = type;
    });
  }

  PanelController _pc2 = new PanelController();

  int _current = 0;
  @override
  Widget build(BuildContext context) {
    _panelHeightOpen = MediaQuery.of(context).size.height * .50;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        centerTitle: true,
        title: editstate == false ? Text('CREATE AVARTAR') : null,
        actions: <Widget>[
          editstate == true
              ? FlatButton(
                  textColor: Colors.white,
                  onPressed: () {
                    _setLoading(false, 1);
                    _pc2.close();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text("DONE"),
                  shape:
                      CircleBorder(side: BorderSide(color: Colors.transparent)),
                )
              : IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(null),
                ),
        ],
        leading: editstate == true
            ? Container(
                child: FlatButton(
                  textColor: Colors.white,
                  onPressed: () {
                    _setLoading(false, 1);
                    _pc2.close();
                  },
                  child: Text("CANCEL"),
                  shape:
                      CircleBorder(side: BorderSide(color: Colors.transparent)),
                ),
              )
            : null,
      ),
      body: Stack(children: [
        CarouselSlider(
          options: CarouselOptions(
            height: height - 250,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: imgList
              .map((item) => Container(
                    child: Center(
                        child: Image.asset(
                      item,
                      fit: BoxFit.cover,
                      height: height,
                    )),
                  ))
              .toList(),
        ),
        Positioned(
          bottom: 100,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.map((url) {
                int index = imgList.indexOf(url);
                return Container(
                  width: 12.0,
                  height: 12.0,
                  margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),
                  constraints: _current == index
                      ? BoxConstraints(minWidth: 30, maxWidth: 60)
                      : null,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: _current == index
                        ? BoxShape.rectangle
                        : BoxShape.circle,
                    color: _current == index ? kButtonColor : Colors.white,
                    borderRadius: _current == index
                        ? BorderRadius.all(Radius.circular(8.0))
                        : null,
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                      side: BorderSide(color: kButtonColor)),
                  // color: Colors.white,
                  textColor: kButtonColor,
                  padding:
                      EdgeInsets.only(top: 15, left: 45, right: 45, bottom: 15),
                  onPressed: () {
                    _setLoading(true, 1);
                    _pc2.open();
                  },
                  child: Text(
                    "CUSTOM".toUpperCase(),
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                RaisedButton(
                  padding:
                      EdgeInsets.only(top: 15, left: 45, right: 45, bottom: 15),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                      side: BorderSide(color: kButtonColor)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Shop()));
                  },
                  color: kButtonColor,
                  textColor: kTextButtonColor,
                  child: Text("DONE".toUpperCase(),
                      style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
        ),
        SlidingUpPanel(
          controller: _pc2,
          maxHeight: _panelHeightOpen,
          minHeight: _panelHeightClosed,
          parallaxEnabled: true,
          isDraggable: false,
          parallaxOffset: .5,
          onPanelClosed: () {
            _setLoading(false, 1);
          },
          color: Color(0xff000000),
          panelBuilder: (sc) => _panel(sc, this.typestate),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
          onPanelSlide: (double pos) => setState(() {
            _fabHeight =
                pos * (_panelHeightOpen - _panelHeightClosed) + _initFabHeight;
          }),
        ),
        Positioned(
            top: 50.0,
            right: 24.0,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    _setLoading(false, 1);
                    _pc2.open();
                  },
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: Image.asset(
                      "assets/icons/" + this.icon1,
                      width: 40,
                      fit: BoxFit.fill,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0)),
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _setLoading(false, 2);
                    _pc2.open();
                  },
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    color: Color(0xff000000),
                    // child: InkWell(
                    // onTap: () => print('1243256578'), //
                    child: Image.asset(
                      "assets/icons/" + this.icon2,
                      width: 40,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _setLoading(false, 3);
                    _pc2.open();
                  },
                  // onTap: ({_setLoading(false, 1), _pc2.close()}),
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: Image.asset(
                      "assets/icons/" + this.icon3,
                      width: 40,
                      fit: BoxFit.fill,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0)),
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ],
            )),
      ]),
    );
  }

  Widget _panel(ScrollController sc, int typestate) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.all(Radius.circular(12.0))),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 50,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                typestate == 1
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _category("Hair", Icons.favorite, Colors.blue, 1),
                          _category("Face", Icons.restaurant, Colors.red, 0),
                          _category("Eye", Icons.event, Colors.amber, 0),
                          _category("Brow", Icons.more_horiz, Colors.green, 0),
                          _category("Nose", Icons.more_horiz, Colors.green, 0),
                        ],
                      )
                    : typestate == 2
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              _category(
                                  "Shirt", Icons.favorite, Colors.blue, 1),
                              _category(
                                  "Pants", Icons.restaurant, Colors.red, 0),
                              _category("Shoes", Icons.event, Colors.amber, 0),
                              _category("Accessories", Icons.more_horiz,
                                  Colors.green, 0),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Center(
                                child: Container(
                                  width: width,
                                  height: height,
                                  decoration: BoxDecoration(
                                    color: kInputSearchColor,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      AnimatedAlign(
                                        alignment: Alignment(xAlign, 0),
                                        duration: Duration(milliseconds: 300),
                                        child: Container(
                                          width: width * 0.5,
                                          height: height,
                                          decoration: BoxDecoration(
                                            color: kFontSecondTextColor,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            xAlign = loginAlign;
                                            loginColor = selectedColor;

                                            signInColor = normalColor;
                                          });
                                        },
                                        child: Align(
                                          alignment: Alignment(-1, 0),
                                          child: Container(
                                            width: width * 0.5,
                                            color: Colors.transparent,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Male',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            xAlign = signInAlign;
                                            signInColor = selectedColor;

                                            loginColor = normalColor;
                                          });
                                        },
                                        child: Align(
                                          alignment: Alignment(1, 0),
                                          child: Container(
                                            width: width * 0.5,
                                            color: Colors.transparent,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Female',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          typestate == 1
              ? Container(
                  height: 50,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _button(
                              "Popular", Icons.favorite, Color(0xff000001), 1),
                          _button(
                              "Food", Icons.restaurant, Color(0xff464646), 0),
                          _button("Events", Icons.event, Color(0xff341F0A), 0),
                          _button(
                              "More", Icons.more_horiz, Color(0xff1B1105), 0),
                          _button(
                              "More", Icons.more_horiz, Color(0xff20394F), 0),
                          _button(
                              "More", Icons.more_horiz, Color(0xff505E69), 0),
                          _button(
                              "More", Icons.more_horiz, Color(0xff461409), 0),
                          _button(
                              "More", Icons.more_horiz, Color(0xff61422E), 0),
                          _button(
                              "More", Icons.more_horiz, Color(0xff965C5B), 0),
                        ],
                      ),
                    ],
                  ),
                )
              : SizedBox(
                  height: 0,
                ),
          SizedBox(
            height: 12.0,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  height: 250,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      typestate == 1
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset(
                                        "assets/charactor/face-00.png"),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset(
                                        "assets/charactor/face-00.png"),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset(
                                        "assets/charactor/face-00.png"),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset(
                                        "assets/charactor/face-00.png"),
                                  ),
                                ),
                              ],
                            )
                          : typestate == 2
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                            "assets/charactor/sh1.png"),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                            "assets/charactor/sh2.png"),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                            "assets/charactor/sh3.png"),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                            "assets/charactor/sh4.png"),
                                      ),
                                    ),
                                  ],
                                )
                              : _IntegerExample(),
                      SizedBox(
                        height: 12.0,
                      ),
                      typestate == 1
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset(
                                        "assets/charactor/face-00.png"),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset(
                                        "assets/charactor/face-00.png"),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset(
                                        "assets/charactor/face-00.png"),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset(
                                        "assets/charactor/face-00.png"),
                                  ),
                                ),
                              ],
                            )
                          : typestate == 2
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                            "assets/charactor/sh5.png"),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                            "assets/charactor/sh6.png"),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                            "assets/charactor/sh7.png"),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                            "assets/charactor/sh8.png"),
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(height: 0),
                      SizedBox(
                        height: 12.0,
                      ),
                      typestate == 1
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset(
                                        "assets/charactor/face-00.png"),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset(
                                        "assets/charactor/face-00.png"),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset(
                                        "assets/charactor/face-00.png"),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset(
                                        "assets/charactor/face-00.png"),
                                  ),
                                ),
                              ],
                            )
                          : typestate == 2
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                            "assets/charactor/sh9.png"),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                            "assets/charactor/sh10.png"),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                            "assets/charactor/sh11.png"),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                            "assets/charactor/sh12.png"),
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(height: 0),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _panel2(ScrollController sc) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(
          controller: sc,
          children: <Widget>[
            SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 30,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                ),
              ],
            ),
            SizedBox(
              height: 18.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _category("Hair", Icons.favorite, Colors.blue, 1),
                _category("Face", Icons.restaurant, Colors.red, 0),
                _category("Eye", Icons.event, Colors.amber, 0),
                _category("Brow", Icons.more_horiz, Colors.green, 0),
                _category("Nose", Icons.more_horiz, Colors.green, 0),
              ],
            ),
            SizedBox(
              height: 18.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button("Popular", Icons.favorite, Color(0xff000001), 1),
                _button("Food", Icons.restaurant, Color(0xff464646), 0),
                _button("Events", Icons.event, Color(0xff341F0A), 0),
                _button("More", Icons.more_horiz, Color(0xff1B1105), 0),
                _button("More", Icons.more_horiz, Color(0xff20394F), 0),
                _button("More", Icons.more_horiz, Color(0xff505E69), 0),
                _button("More", Icons.more_horiz, Color(0xff461409), 0),
                _button("More", Icons.more_horiz, Color(0xff61422E), 0),
                _button("More", Icons.more_horiz, Color(0xff965C5B), 0),
              ],
            ),
          ],
        ));
  }

  Widget _category(String label, IconData icon, Color color, int index) {
    return Column(
      children: <Widget>[
        FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: index == 1
                  ? BorderSide(color: kButtonColor)
                  : BorderSide(color: Colors.transparent)),
          color: index == 1 ? kButtonColor : Colors.transparent,
          textColor: index == 1 ? Colors.black : Colors.white,
          padding: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
          onPressed: () {
            _pc2.open();
          },
          child: Text(
            label,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _button(String label, IconData icon, Color color, int index) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          padding: const EdgeInsets.all(15.0),
          // child: Icon(
          //   icon,
          //   color: Colors.white,
          // ),
          decoration: BoxDecoration(
              border: index == 1
                  ? Border.all(color: kButtonColor)
                  : Border.all(color: Colors.transparent),
              color: color,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  blurRadius: 8.0,
                )
              ]),
        ),
      ],
    );
  }
}

class _IntegerExample extends StatefulWidget {
  @override
  __IntegerExampleState createState() => __IntegerExampleState();
}

class __IntegerExampleState extends State<_IntegerExample> {
  int _currentIntValue = 10;
  int _currentHorizontalIntValue = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Weight ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                )),
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.remove),
              onPressed: () => setState(() {
                final newValue = _currentIntValue - 10;
                _currentIntValue = newValue.clamp(0, 100);
              }),
            ),
            Text('Current int value: $_currentIntValue',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                )),
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.add),
              onPressed: () => setState(() {
                final newValue = _currentIntValue + 20;
                _currentIntValue = newValue.clamp(0, 100);
              }),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Height ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                )),
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.remove),
              onPressed: () => setState(() {
                final newValue = _currentIntValue - 10;
                _currentIntValue = newValue.clamp(0, 100);
              }),
            ),
            Text('Current int value: $_currentIntValue',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                )),
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.add),
              onPressed: () => setState(() {
                final newValue = _currentIntValue + 20;
                _currentIntValue = newValue.clamp(0, 100);
              }),
            ),
          ],
        ),
      ],
    );
  }
}

class _DecimalExample extends StatefulWidget {
  @override
  __DecimalExampleState createState() => __DecimalExampleState();
}

class __DecimalExampleState extends State<_DecimalExample> {
  double _currentDoubleValue = 3.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 16),
        Text('Decimal', style: Theme.of(context).textTheme.headline6),
        DecimalNumberPicker(
          value: _currentDoubleValue,
          minValue: 0,
          maxValue: 10,
          decimalPlaces: 2,
          onChanged: (value) => setState(() => _currentDoubleValue = value),
        ),
        SizedBox(height: 32),
      ],
    );
  }
}
