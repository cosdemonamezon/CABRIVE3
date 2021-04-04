import 'package:CABRIVE/Screen/Home/HomeScreen.dart';
import 'package:CABRIVE/Screen/Sport/chewie_list_item.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class SportScreen extends StatefulWidget {
  SportScreen({Key key}) : super(key: key);

  @override
  _SportScreenState createState() => _SportScreenState();
}

class _SportScreenState extends State<SportScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), 
          onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomeScreen()), (route) => false);
          }
        ),
        centerTitle: true,
        title: Text("SPORT"),
      ),
      body: Container(
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Card(
              //margin: EdgeInsets.only(left: 8, right: 8, bottom: 24),
              elevation: 8,
              color: kInputSearchColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)), //<--custom shape
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: kInputSearchColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                        // bottomLeft: Radius.circular(18),
                        // bottomRight: Radius.circular(18),
                      ),                    
                    ),
                    
                    height: 220,
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
                      child: ChewieListItem(
                        videoPlayerController: VideoPlayerController.network(
                          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"
                        ),
                        looping: true,
                      ),
                    ),
                  ),
                  Text(
                    "𝐕𝐞𝐧𝐝𝐫𝐞𝐝𝐢, 𝐝𝐞𝐫𝐧𝐢𝐞𝐫 𝐣𝐨𝐮𝐫 𝐝’𝐞𝐧𝐭𝐫𝐚î𝐧𝐞𝐦𝐞𝐧𝐭💥💣",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            // ChewieListItem(
            //   videoPlayerController: VideoPlayerController.asset(
            //     "assets/videos/cabrive.mp4"
            //   ),
            //   looping: true,
            // ),
            
            
            Card(
              //margin: EdgeInsets.only(left: 8, right: 8, bottom: 24),
              elevation: 8,
              color: kInputSearchColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)), //<--custom shape
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: kInputSearchColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                        // bottomLeft: Radius.circular(18),
                        // bottomRight: Radius.circular(18),
                      ),                    
                    ),
                    
                    height: 220,
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
                      child: ChewieListItem(
                        // videoPlayerController: VideoPlayerController.asset(
                        //   "assets/videos/3.mp4"
                        // ),
                        videoPlayerController: VideoPlayerController.network(
                          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"
                        ),
                        looping: true,
                      ),
                    ),
                  ),
                  Text(
                    "𝐕𝐞𝐧𝐝𝐫𝐞𝐝𝐢, 𝐝𝐞𝐫𝐧𝐢𝐞𝐫 𝐣𝐨𝐮𝐫 𝐝’𝐞𝐧𝐭𝐫𝐚î𝐧𝐞𝐦𝐞𝐧𝐭💥💣",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}