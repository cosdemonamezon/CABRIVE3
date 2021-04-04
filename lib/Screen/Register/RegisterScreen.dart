import 'package:CABRIVE/Screen/Login/LoginScreen.dart';
import 'package:CABRIVE/Screen/Register/SetPin.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
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
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Create Account",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: kFontPrimaryColor),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Please fill the input blow here",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: kFontSecondTextColor),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                  height: size.height * 0.08,
                  //width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: kInputColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.person, color: kIconColor,),
                        hintText: "Name"                        
                      ),                      
                    ),
                  ),
                ),
              SizedBox(height: 15),
              Container(
                  height: size.height * 0.08,
                  //width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: kInputColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.stay_current_portrait, color: kIconColor,),
                        hintText: "Phone",                        
                      ),
                      
                    ),
                  ),
                ),
              SizedBox(height: 15),
              Container(
                  height: size.height * 0.08,
                  //width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: kInputColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.email, color: kIconColor,),
                        hintText: "Email",
                        
                      ),
                      
                    ),
                  ),
                ),
              SizedBox(height: 15),
              Container(
                  height: size.height * 0.08,
                  //width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: kInputColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.https, color: kIconColor,),
                        hintText: "Password",
                        
                      ),
                      
                    ),
                  ),
                ),
              SizedBox(height: 15),
              Container(
                  height: size.height * 0.08,
                  //width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: kInputColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.https, color: kIconColor,),
                        hintText: "Confirm Password",
                        
                      ),
                      
                    ),
                  ),
                ),

              SizedBox(height: 20),
                Container(
                  height: size.height * 0.08,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: kButtonColor,
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => SetPin()));
                    },
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kTextButtonColor)
                    ),
                  ),
                ),
                SizedBox(height: 10),
                _divider(),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SvgPicture.asset("assets/icons/Social-logo-Google.svg", height: 20,),
                      Container(
                        //color: Colors.white,
                        child: Image.asset("assets/icons/Social-logo-Google.png", width: 40, height: 40,),
                        // child: SvgPicture.asset(
                        //     'assets/icons/Social-logo-Google.svg',
                        //       fit: BoxFit.contain,
                        // ),
                      ),
                      Container(
                        //color: Colors.yellow,
                        child: Image.asset("assets/icons/Social-logo-Facebook.png", width: 40, height: 40,),
                        // child: SvgPicture.asset(
                        //     'assets/icons/Social-logo-Facebook.svg',
                        //       fit: BoxFit.contain,
                        // ),
                      ),
                      Container(
                        //color: Colors.white,
                        child: Image.asset("assets/icons/Social-logo-twitter.png", width: 40, height: 40,),
                        // child: SvgPicture.asset(
                        //     'assets/icons/Social-logo-twitter.svg',
                        //       fit: BoxFit.contain,
                        // ),
                      ),
                      Container(
                        //color: Colors.yellow,
                        child: Image.asset("assets/icons/Social-logo-Apple.png", width: 40, height: 40,),
                        // child: SvgPicture.asset(
                        //     'assets/icons/Social-logo-Apple.svg',
                        //       fit: BoxFit.contain,
                        // ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5),
                _createAccountLabel(context),
            ],
          ),
        ),
      ),
    );
  }
}

_divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: kFontSecondTextColor,
                thickness: 1,
              ),
            ),
          ),
          Text(
            'Or sign in with',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: kFontSecondTextColor)
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: kFontSecondTextColor,
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

_createAccountLabel(context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        //padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Already have a account ?',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: kFontSecondTextColor),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Sing in',
              style: TextStyle(
                  color: kButtonColor,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
