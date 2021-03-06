import 'package:CABRIVE/Screen/Home/HomeScreen.dart';
import 'package:CABRIVE/constants.dart';
import 'package:CABRIVE/pages/sign-up.dart';
import 'package:CABRIVE/services/camera.service.dart';
import 'package:CABRIVE/services/facenet.service.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:CABRIVE/Screen/Widgets/LoginPin.dart';

String touchID = "Touch ID for C.A.BRIVE CORREZE";
String subTouchID = "Use your Touch ID for faster, eaier";
String secoundTouchID = "Access to your account";
String faceID = "Use your Face ID for faster, eaier";

String faceScan1ID = "Face ID";
String canfaceScan1ID = "Can’t Face ID";
String subfaceScan1ID = " Lorem ipsum dolor sit amet,";
String secoundfaceScan1ID = "consectetur adipiscing elit, sed";

String fingerID = "assets/icons/Finger scan.svg";
String facePic = "assets/icons/face_ID.png";
CameraDescription cameraDescription;

class Constants {
  Constants._();
  static const double padding = 20;
  static const double avatarRadius = 45;
}

alertdialog(
    String title, String subtitle, String secoundtitle, String img, context) {
  return Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Constants.padding),
    ),
    elevation: 4,
    backgroundColor: Colors.transparent,
    child: Stack(
      children: [
        Container(
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
            children: [
              Center(
                child: SvgPicture.asset(
                  img,
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                  color: kButtonColor,
                ),
              ),
              SizedBox(height: 20),
              Text(title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kFontPrimaryColor)),
              SizedBox(
                height: 15,
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 15, color: kFontTextColor),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                secoundtitle,
                style: TextStyle(fontSize: 15, color: kFontTextColor),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 33,
              ),
              Container(
                //height: size.height * 0.08,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: kButtonColor,
                ),
                child: FlatButton(
                  onPressed: () {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) => faceScandialog(
                        touchID,
                        subTouchID,
                        secoundTouchID,
                        facePic,
                        context,
                      ),
                    );
                    // Navigator.push(
                    //   context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text("USE TOUCH ID",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kTextButtonColor)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                //height: size.height * 0.08,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: kPrimaryColor,
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("CANCEL",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kButtonColor)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
        // Positioned(
        //   left: Constants.padding,
        //   right: Constants.padding,
        //   child: CircleAvatar(
        //     backgroundColor: Colors.transparent,
        //     radius: Constants.avatarRadius,
        //     child: ClipRRect(
        //       borderRadius: BorderRadius.all(Radius.circular(Constants.avatarRadius)),
        //       child: Image.asset(img)
        //     ),
        //   ),
        // ),
      ],
    ),
  );
}

faceScandialog(
    String title, String subtitle, String secoundtitle, String img, context) {
  return Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Constants.padding),
    ),
    elevation: 4,
    backgroundColor: Colors.transparent,
    child: Stack(
      children: [
        Container(
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
            children: [
              Center(
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                  color: kButtonColor,
                ),
              ),
              SizedBox(height: 20),
              Text(title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kFontPrimaryColor)),
              SizedBox(
                height: 15,
              ),
              Text(
                faceID,
                style: TextStyle(fontSize: 15, color: kFontTextColor),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                secoundtitle,
                style: TextStyle(fontSize: 15, color: kFontTextColor),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 33,
              ),
              Container(
                //height: size.height * 0.08,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: kButtonColor,
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPin()));
                    //FaceNetService();
                    //CameraService();
                    // Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (BuildContext context) => SignUp(
                    //           cameraDescription: cameraDescription,
                    //         ),
                    //       ),
                    //     );
                  },
                  child: Text("USE TOUCH ID",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kTextButtonColor)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                //height: size.height * 0.08,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: kPrimaryColor,
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("CANCEL",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kButtonColor)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
        // Positioned(
        //   left: Constants.padding,
        //   right: Constants.padding,
        //   child: CircleAvatar(
        //     backgroundColor: Colors.transparent,
        //     radius: Constants.avatarRadius,
        //     child: ClipRRect(
        //       borderRadius: BorderRadius.all(Radius.circular(Constants.avatarRadius)),
        //       child: Image.asset(img)
        //     ),
        //   ),
        // ),
      ],
    ),
  );
}

faceScan1(
    String title, String subtitle, String secoundtitle, String img, context) {
  return Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Constants.padding),
    ),
    elevation: 4,
    backgroundColor: Colors.transparent,
    child: Stack(
      children: [
        Container(
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
            children: [
              Center(
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                  color: kButtonColor,
                ),
              ),
              SizedBox(height: 20),
              Text(title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kFontPrimaryColor)),
              SizedBox(
                height: 15,
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 15, color: kFontTextColor),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                secoundtitle,
                style: TextStyle(fontSize: 15, color: kFontTextColor),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 33,
              ),
              // Container(
              //   //height: size.height * 0.08,
              //   width: 200,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(16),
              //     color: kButtonColor,
              //   ),
              //   child: FlatButton(
              //     onPressed: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => HomeScreen()));
              //     },
              //     child: Text("USE TOUCH ID",
              //         style: TextStyle(
              //             fontSize: 16,
              //             fontWeight: FontWeight.bold,
              //             color: kTextButtonColor)),
              //   ),
              // ),
              SizedBox(
                height: 15,
              ),
              Container(
                //height: size.height * 0.08,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: kPrimaryColor,
                ),
                child: FlatButton(
                  onPressed: () {
                    //Navigator.pop(context);
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) => faceScandialog(
                        canfaceScan1ID,
                        subfaceScan1ID,
                        secoundfaceScan1ID,
                        facePic,
                        context,
                      ),
                    );
                  },
                  child: Text("CANCEL",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kButtonColor)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
        // Positioned(
        //   left: Constants.padding,
        //   right: Constants.padding,
        //   child: CircleAvatar(
        //     backgroundColor: Colors.transparent,
        //     radius: Constants.avatarRadius,
        //     child: ClipRRect(
        //       borderRadius: BorderRadius.all(Radius.circular(Constants.avatarRadius)),
        //       child: Image.asset(img)
        //     ),
        //   ),
        // ),
      ],
    ),
  );
}
