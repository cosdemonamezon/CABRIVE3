import 'package:CABRIVE/constants.dart';
import 'package:CABRIVE/alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:CABRIVE/Screen/Register/Numpad.dart';

class ConfirmPin extends StatefulWidget {
  ConfirmPin({Key key}) : super(key: key);

  @override
  _ConfirmPinState createState() => _ConfirmPinState();
}

class _ConfirmPinState extends State<ConfirmPin> {
  int length = 4;
  onChange(String number){
    if(number.length == length){
      // if (number == "123456") {
      //   print("number : "+ number);
      // } 
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => alertdialog(
          touchID,
          subTouchID,
          secoundTouchID,
          fingerID,
          context,
        ),
      );
      print(number);
    }
    else {
      print(number);
    }    
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, color: kFontPrimaryColor,),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Center(
                child: Icon(Icons.https, size: 50, color: kFontPrimaryColor,),
              ),
              SizedBox(height: 20,),
              Center(
                child: Text(
                  "Confirm your passcode",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                ),
              ),
              Numpad(length: length, onChange: onChange,)
            ],
          ),
        ),
      ),
    );
  }
}