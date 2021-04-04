import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:CABRIVE/Screen/Register/Numpad.dart';
import 'package:CABRIVE/Screen/Register/ConfirmPin.dart';

class SetPin extends StatefulWidget {
  SetPin({Key key}) : super(key: key);

  @override
  _SetPinState createState() => _SetPinState();
}

class _SetPinState extends State<SetPin> {
  int length = 4;
  onChange(String number){
    if(number.length == length){
      // if (number == "123456") {
      //   print("number : "+ number);
      // }  
       Navigator.push(
            context, MaterialPageRoute(builder: (context) => ConfirmPin()));
      
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
                  "Create your passcode",
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