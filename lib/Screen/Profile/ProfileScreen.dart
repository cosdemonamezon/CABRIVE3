import 'package:CABRIVE/Screen/Profile/ProfileSetting.dart';
import 'package:CABRIVE/Screen/Widgets/NavigationBar.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool listSwith = false;


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("PROFILE & SETTINGS"),
        // actions: [
        //   IconButton(
        //       iconSize: 32,
        //       icon: Icon(Icons.settings),
        //       onPressed: () {
        //         Navigator.push(context,
        //             MaterialPageRoute(builder: (context) => ProfileSetting()));
        //       }),
        // ],
      ),
      body: SingleChildScrollView(
        child: Container(
          //height: height,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  children: [
                    Container(
                      height: 270,
                      width: double.infinity,
                      //color: Colors.red,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 25,
                                  color: kIconColor,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Peeraphat Chatchavalhansa",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: kFontPrimaryColor),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.phone_android,
                                  size: 25,
                                  color: kIconColor,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "(443)763-7696",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: kFontPrimaryColor),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 25,
                                  color: kIconColor,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "roy.hayes@mail.com",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: kFontPrimaryColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      //top: 130,
                      // right: 30,
                      // left: 120,
                      child: Container(
                    height: 50,
                    width: 270,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kCicleColor,
                    ),
                    child: FlatButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context, MaterialPageRoute(builder: (context) => Wallet()));
                      },
                      child: Text(
                        "Edit Avata",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kTextButtonColor)
                      ),
                    ),
                  ),
                     
                    ),
                    Positioned(
                      right: 10.0,
                      top: 30.0,
                      child: Container(
                        height: 220,
                        width: 100,
                        //color: Colors.blue,
                        //child: SvgPicture.asset("assets/images/Men-shirt-white.svg"),
                        child: Image.asset("assets/images/Men-shirt-white.png"),
                      ),
                    ),
                  ],
                ),
              ),
              
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  color: kBackgroundColor,
                  //margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Edit Profile",
                            style: TextStyle(color: Colors.white)),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                      ListTile(
                        title: Text("Change Avatar",
                            style: TextStyle(color: Colors.white)),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change password
                        },
                      ),
                      SwitchListTile(
                        activeColor: kButtonColor,
                        contentPadding: const EdgeInsets.all(0),
                        value: listSwith,
                        title: Text("Send me marketing emails",
                            style: TextStyle(color: Colors.white)),
                        onChanged: (val) {
                          setState(() {
                            listSwith = true;
                          });
                        },
                      ),
                      SwitchListTile(
                        activeColor: kButtonColor,
                        contentPadding: const EdgeInsets.all(0),
                        value: listSwith,
                        title: Text("Enable notification",
                            style: TextStyle(color: Colors.white)),
                        onChanged: (val) {
                          setState(() {
                            listSwith = true;
                          });
                        },
                      ),
                      SwitchListTile(
                        activeColor: kButtonColor,
                        contentPadding: const EdgeInsets.all(0),
                        value: listSwith,
                        title: Text("Remind me to rate this app",
                            style: TextStyle(color: Colors.white)),
                        onChanged: (val) {
                          setState(() {
                            listSwith = true;
                          });
                        },
                      ),
                      SwitchListTile(
                        activeColor: kButtonColor,
                        contentPadding: const EdgeInsets.all(0),
                        value: listSwith,
                        title: Text("Background song refresh",
                            style: TextStyle(color: Colors.white)),
                        onChanged: (val) {
                          setState(() {
                            listSwith = true;
                          });
                        },
                      ),
                      SwitchListTile(
                        activeColor: kButtonColor,
                        contentPadding: const EdgeInsets.all(0),
                        value: listSwith,
                        title: Text("Recommend me songs based onmy location",
                            style: TextStyle(color: Colors.white)),
                        onChanged: (val) {
                          setState(() {
                            listSwith = true;
                          });
                        },
                      ),
                      SwitchListTile(
                        activeColor: kButtonColor,
                        contentPadding: const EdgeInsets.all(0),
                        value: listSwith,
                        title: Text("Auto-transition playback to cast devices",
                            style: TextStyle(color: Colors.white)),
                        onChanged: (val) {
                          setState(() {
                            listSwith = true;
                          });
                        },
                      ),
                      SwitchListTile(
                        activeColor: kButtonColor,
                        contentPadding: const EdgeInsets.all(0),
                        value: listSwith,
                        title: Text("Find friends from my contact list",
                            style: TextStyle(color: Colors.white)),
                        onChanged: (val) {
                          setState(() {
                            listSwith = true;
                          });
                        },
                      ),
                      const SizedBox(height: 60.0),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "/");
                                },
                                child: Text(
                                  "Logout",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: kFontPrimaryColor),
                                ),
                                
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(title: "profile"),
    );
  }
}
