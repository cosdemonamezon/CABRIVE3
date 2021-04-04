import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:CABRIVE/Screen/Register/RegisterScreen.dart';
import 'package:CABRIVE/Screen/Home/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: height,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40,),
                Hero(
                  tag: 'hero',
                  child: Center(
                    child: Container(
                      height: 230,
                      width: 230,
                      child: Image.asset("assets/logo/token_select.png"),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kLinkTextColor),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Please sign in to continue",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: kFontSecondTextColor),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
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
                SizedBox(height: 10,),
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
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: kLinkTextColor)
                    ),
                  ],
                ),
                SizedBox(height: 30),
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
                        context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kTextButtonColor)
                    ),
                  ),
                ),
                SizedBox(height: 30),
                _divider(),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SvgPicture.asset("assets/icons/Social-logo-Google.svg", height: 20,),
                      // CircleAvatar(
                      //   radius: 20,
                      //   child: Image.asset("assets/icons/Social-logo-Google.png"),
                      // ),
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
                SizedBox(height: 10),
                _createAccountLabel(context),
              ],
            ),
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
            context, MaterialPageRoute(builder: (context) => RegisterScreen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        //padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Don\'t have an account ?',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: kFontSecondTextColor),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Sing up',
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
