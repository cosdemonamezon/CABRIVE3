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

// final List<String> imgList = [
//   'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//   'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//   'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
//   'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
// ];

final List<String> imgList = [
  'assets/charactor/Men-shirt-black.png',
  'assets/charactor/Men-shirt-white.png',
];

class AvartarScreen extends StatefulWidget {
  AvartarScreen({Key key}) : super(key: key);

  @override
  _AvartarScreenState createState() => _AvartarScreenState();
}

class _AvartarScreenState extends State<AvartarScreen> {
  final double _initFabHeight = 5.0;
  double _fabHeight;
  double _panelHeightOpen;
  double _panelHeightClosed = 5.0;

  bool editstate = false;

  @override
  void initState() {
    super.initState();
    _fabHeight = _initFabHeight;
    _setLoading(false);
  }

  _setLoading(bool value) {
    setState(() {
      editstate = value;
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
                    _setLoading(false);
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
                    _setLoading(false);
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
                    _setLoading(true);
                    _pc2.open();
                  },
                  child: Text(
                    "EDIT".toUpperCase(),
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
                  onPressed: () {},
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
            _setLoading(false);
          },
          color: Color(0xff000000),
          panelBuilder: (sc) => _panel(sc),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
          onPanelSlide: (double pos) => setState(() {
            _fabHeight =
                pos * (_panelHeightOpen - _panelHeightClosed) + _initFabHeight;
          }),
        ),
      ]),
    );
  }

  Widget _panel(ScrollController sc) {
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
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Container(
            height: 50,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Center(
                            child: Container(
                              height: 100,
                              width: 100,
                              child:
                                  Image.asset("assets/charactor/face-01.png"),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 100,
                              width: 100,
                              child:
                                  Image.asset("assets/charactor/face-02.png"),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 100,
                              width: 100,
                              child:
                                  Image.asset("assets/charactor/face-03.png"),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 100,
                              width: 100,
                              child:
                                  Image.asset("assets/charactor/face-04.png"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Center(
                            child: Container(
                              height: 100,
                              width: 100,
                              child:
                                  Image.asset("assets/charactor/face-05.png"),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 100,
                              width: 100,
                              child:
                                  Image.asset("assets/charactor/face-06.png"),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 100,
                              width: 100,
                              child:
                                  Image.asset("assets/charactor/face-07.png"),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 100,
                              width: 100,
                              child:
                                  Image.asset("assets/charactor/face-08.png"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Center(
                            child: Container(
                              height: 100,
                              width: 100,
                              child:
                                  Image.asset("assets/charactor/face-09.png"),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 100,
                              width: 100,
                              child:
                                  Image.asset("assets/charactor/face-10.png"),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 100,
                              width: 100,
                              child:
                                  Image.asset("assets/charactor/face-11.png"),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 100,
                              width: 100,
                              child:
                                  Image.asset("assets/charactor/face-12.png"),
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
