import 'package:CABRIVE/Screen/Home/HomeScreen.dart';
import 'package:CABRIVE/Screen/Widgets/Numberpad.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';

class LoginPin extends StatefulWidget {
  LoginPin({Key key}) : super(key: key);

  @override
  _LoginPinState createState() => _LoginPinState();
}

class _LoginPinState extends State<LoginPin> {
  int length = 6;
  onChange(String number) {
    if (number.length == length) {
      if (number == "123456") {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        //print("number : "+ number);
      } 
      // else if (number == "654321") {
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => DashbordScreen()));
      //   //print("number : "+ number);
      // } 
      // else {
      //   Navigator.pushReplacement(context,
      //       MaterialPageRoute(builder: (BuildContext context) => super.widget));
      // }
      //print(number);
    } else {
      // Navigator.pushReplacement(context,
      //     MaterialPageRoute(builder: (BuildContext context) => super.widget));
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        //title: Text("Login Pin"),
      ),
      body: Container(
        height: height,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: height * .10),
                // Hero(
                //   tag: "hero",
                //   child: Container(
                //     width: MediaQuery.of(context).size.width,
                //     height: 100,
                //     decoration: BoxDecoration(
                //       image: DecorationImage(
                //         fit: BoxFit.fitHeight,
                //         image: AssetImage("assets/logo.png"),
                //       ),
                //     ),
                //   ),
                // ),
                Center(
                  child: IconButton(
                    iconSize: 60,
                    color: kFontPrimaryColor,
                    icon: Icon(Icons.lock), 
                    onPressed: (){}
                  ),
                ),
                SizedBox(height: 20),
                Numberpad(
                  length: length,
                  onChange: onChange,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
