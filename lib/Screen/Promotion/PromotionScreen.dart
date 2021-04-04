import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:CABRIVE/Screen/Home/HomeScreen.dart';
import 'package:CABRIVE/Screen/Promotion/DetailPromotion.dart';

class PromotionScreen extends StatefulWidget {
  PromotionScreen({Key key}) : super(key: key);

  @override
  _PromotionScreenState createState() => _PromotionScreenState();
}

class _PromotionScreenState extends State<PromotionScreen> {
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
        title: Text("PROMOTION"),
      ),
      body: Container(
            height: height,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
                          child: Column(
                children: [
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                        bottomLeft: Radius.circular(18),
                        bottomRight: Radius.circular(18),
                      ),
                    ),
                    child: buildCard(
                      "assets/131982946_3631407893569243_1613121772109122784_n.jpg",
                      "#BoxingDayRugby",
                      "“𝐋𝐞 𝐓𝐎𝐏 𝟏𝟒 𝐜𝐨𝐮𝐥𝐞𝐮𝐫𝐬 𝐝𝐞 𝐧𝐨𝐬 𝐬𝐨𝐢𝐠𝐧𝐚𝐧𝐭𝐬”",
                      "…See more"
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                        bottomLeft: Radius.circular(18),
                        bottomRight: Radius.circular(18),
                      ),
                    ),
                    child: buildCard(
                      "assets/131948114_3624474260929273_4187310378479201958_o.jpg",
                      "⚫ ZOUZOU ⚪",
                      "La mascotte préféréedu Top 14 arrive a",
                      "…See more"
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                        bottomLeft: Radius.circular(18),
                        bottomRight: Radius.circular(18),
                      ),
                    ),
                    child: buildCard(
                      "assets/131935758_3624002657643100_2330089908347051597_n.jpg",
                      "#BoxingDayRugby",
                      "“𝐋𝐞 𝐓𝐎𝐏 𝟏𝟒 𝐚𝐮𝐱 𝐜𝐨𝐮𝐥𝐞𝐮𝐫𝐬 𝐝𝐞 𝐧𝐨𝐬 𝐬𝐨𝐢𝐠𝐧𝐚𝐧𝐭𝐬”",
                      "…See more"
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }

  Card buildCard(String img, String title, String subtitle1, String subtitle2) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: kInputSearchColor,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.asset(img),
          ListTile(
            title: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      subtitle1,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor),
                    ),
                  ],
                ),
              ],
            ),
            subtitle: Column(
              children: [
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => DetailPromotion()));
                        },
                        child: Text(
                          subtitle2,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kCicleColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}