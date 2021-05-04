import 'package:CABRIVE/constants.dart';
import 'package:CABRIVE/alert.dart';
import 'package:CABRIVE/pages/db/database.dart';
import 'package:CABRIVE/pages/sign-up.dart';
import 'package:CABRIVE/services/facenet.service.dart';
import 'package:CABRIVE/services/ml_vision_service.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:CABRIVE/Screen/Register/Numpad.dart';

class ConfirmPin extends StatefulWidget {
  ConfirmPin({Key key}) : super(key: key);

  @override
  _ConfirmPinState createState() => _ConfirmPinState();
}

class _ConfirmPinState extends State<ConfirmPin> {

  FaceNetService _faceNetService = FaceNetService();
  MLVisionService _mlVisionService = MLVisionService();
  DataBaseService _dataBaseService = DataBaseService();
  CameraDescription cameraDescription;

  bool loading = false;

  @override
  void initState() {
    super.initState();
    _startUp();
  }

  _startUp() async {
    _setLoading(true);

    List<CameraDescription> cameras = await availableCameras();

    /// takes the front camera
    cameraDescription = cameras.firstWhere(
      (CameraDescription camera) =>
          camera.lensDirection == CameraLensDirection.front,
    );

    // start the services
    await _faceNetService.loadModel();
    await _dataBaseService.loadDB();
    _mlVisionService.initialize();

    _setLoading(false);
  }

  // shows or hides the circular progress indicator
  _setLoading(bool value) {
    setState(() {
      loading = value;
    });
  }


  int length = 6;
  onChange(String number) {
    if (number.length == length) {
      // if (number == "123456") {
      //   print("number : "+ number);
      // }
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => alertpopup(
          touchID,
          subTouchID,
          secoundTouchID,
          fingerID,
          context,
        ),
      );
      print(number);
    } else {
      print(number);
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        //height: height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: kFontPrimaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Icon(
                  Icons.https,
                  size: 50,
                  color: kFontPrimaryColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("Confirm your passcode",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: kFontPrimaryColor)),
              ),
              Numpad(
                length: length,
                onChange: onChange,
              )
            ],
          ),
        ),
      ),
    );
  }

  alertpopup(
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
                      color: Colors.black,
                      offset: Offset(0, 10),
                      blurRadius: 10),
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
                        builder: (context) => faceScan(
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

  faceScan(
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
                      color: Colors.black,
                      offset: Offset(0, 10),
                      blurRadius: 10),
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
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => LoginPin()));
                      //FaceNetService();
                      //CameraService();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => SignUp(
                            cameraDescription: cameraDescription,
                          ),
                        ),
                      );
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
}
