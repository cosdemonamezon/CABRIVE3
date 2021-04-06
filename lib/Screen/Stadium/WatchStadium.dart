import 'package:CABRIVE/Screen/Stadium/FnbStadium.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';

class WatchStadium extends StatefulWidget {
  WatchStadium({Key key}) : super(key: key);

  @override
  _WatchStadiumState createState() => _WatchStadiumState();
}

class _WatchStadiumState extends State<WatchStadium> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kInputSearchColor,
      body: Container(
        color: kInputSearchColor,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Container(
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: size.height * 0.08,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: kCicleColor,
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => FnbStadium()));
                    },
                    child: Text(
                      "AR",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kTextButtonColor)
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Container(
                  height: size.height * 0.08,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: kCicleColor,
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => FnbStadium()));
                    },
                    child: Text(
                      "VR",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kTextButtonColor)
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Container(
                  height: size.height * 0.08,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: kCicleColor,
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => FnbStadium()));
                    },
                    child: Text(
                      "LIVE STREAMING",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kTextButtonColor)
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Text(
                      "CANCEL",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kLinkTextColor)
                    ),
                  ),
                ),

                SizedBox(height: 50,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}