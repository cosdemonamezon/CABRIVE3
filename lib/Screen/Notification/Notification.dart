import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:CABRIVE/Screen/Widgets/NavigationBar.dart';
import 'package:CABRIVE/Screen/Notification/DetailNoti.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("NOTIFICATION"),
      ),
      body: Container(
        height: height,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailNoti()));
                },
                child: messageCard(
                    "Aenean sed lorem est. Sed quis",
                    "assets/icons/Live Recording.svg",
                    "neque ut nibh suscipit imperdiet ac "),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailNoti()));
                  },
                  child: messageCard(
                      "Vivamus eget aliquam dui. Integer eu",
                      "assets/icons/news-01.svg",
                      "arcu vel arcu suscipit ultrices quis ")),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailNoti()));
                  },
                  child: messageCard(
                      "Vivamus eget aliquam dui. Integer eu",
                      "assets/icons/Megaphone.svg",
                      "tempor. Nunc faucibus pellentesque ")),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailNoti()));
                  },
                  child: messageCard(
                      "Cras gravida bibendum dolor eu varius. Morbi fermentum velit nisl, ",
                      "assets/icons/news-01.svg",
                      "arcu vel arcu suscipit ultrices quis ")),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailNoti()));
                  },
                  child: messageCard(
                      "Vivamus eget aliquam dui. Integer eu",
                      "assets/icons/news-01.svg",
                      "aliquam turpis aliquam vitae. Praesent  ")),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailNoti()));
                  },
                  child: messageCard(
                      "Vivamus eget aliquam dui. Integer eu",
                      "assets/icons/Megaphone.svg",
                      "arcu vel arcu suscipit ultrices quis ")),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailNoti()));
                  },
                  child: messageCard(
                      "Vivamus eget aliquam dui. Integer eu",
                      "assets/icons/news-01.svg",
                      "arcu vel arcu suscipit ultrices quis ")),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailNoti()));
                  },
                  child: messageCard(
                      "Vivamus eget aliquam dui. Integer eu",
                      "assets/icons/Live Recording.svg",
                      "arcu vel arcu suscipit ultrices quis ")),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailNoti()));
                  },
                  child: messageCard(
                      "Vivamus eget aliquam dui. Integer eu",
                      "assets/icons/Megaphone.svg",
                      "arcu vel arcu suscipit ultrices quis ")),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(title: "notification"),
    );
  }

  Card messageCard(String title, String img, String subtitle) {
    return Card(
      color: kBackgroundColor,
      child: ListTile(
        leading: Container(
          child: SvgPicture.asset(
            img,
            height: 30,
            width: 30,
            fit: BoxFit.fill,
            color: kCicleColor,
          ),
        ),
        // leading: Icon(
        //   icon,
        //   color: Color(0xffdd4b39),
        //   size: 40.0,
        // ),
        title: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: kFontPrimaryColor),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: kFontPrimaryColor),
        ),
      ),
    );
  }
}
