import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:CABRIVE/Screen/Home/HomeScreen.dart';
import 'package:CABRIVE/Screen/Stadium/StadiumDetail.dart';

class StadiumScreen extends StatefulWidget {
  StadiumScreen({Key key}) : super(key: key);

  @override
  _StadiumScreenState createState() => _StadiumScreenState();
}

class _StadiumScreenState extends State<StadiumScreen> {
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
        title: Text("STADIUM"),
      ),
      body: ListView(
        children: [
          Container(
            height: height,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildContainer(
                        "assets/FIFA_World_Cup_2010_Mexico_VS_South_Africa.jpg",
                        "FNB"
                      ),
                      buildContainer(
                        "assets/State_of_Origin_Game_II_2018.jpg",
                        "ANZ"
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildContainer(
                        "assets/Stade_de_Twickenham_à_Londres.jpg",
                        "TWICKENHAM"
                      ),
                      buildContainerTwo(
                        "assets/StadeFranceNationsLeague2018.jpg",
                        "STADE DE",
                        "FRANCE"
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildContainer(
                        "assets/Stadio_Olimpico_2008.jpeg",
                        "STADIO OLIMPICO"
                      ),
                      buildContainer(
                        "assets/FIFA_World_Cup_2010_Mexico_VS_South_Africa.jpg",
                        "MILLENNIUM"
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildContainer(
                        "assets/Murrayfield_Stadium_2005-05-13.jpg",
                        "MURRAYFIELD"
                      ),
                      buildContainer(
                        "assets/FIFA_World_Cup_2010_Slovakia_Italy.jpg",
                        "ELLIS PARK"
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildContainer(
                        "assets/Soldier_field_2006.jpg",
                        "SOLDIER FIELD"
                      ),
                      buildContainer(
                        "assets/Stade_Vélodrome_(20150405).jpg",
                        "STADE VELODROME"
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildContainer(
                        "assets/E37_Perth_Stadium_Open_Day_089.jpeg",
                        "PERTH"
                      ),
                      buildContainer(
                        "assets/Marvel_Stadium_from_an_aerial_perspective._Feb_2019.jpg",
                        "DOCKLANDS"
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

  // Navigator.push(
  //   context, MaterialPageRoute(builder: (context) => StadiumScreen()));
  Container buildContainer(String img,  String title) {
    return Container(
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => StadiumDetail()));
        },
        child: Container(
          height: 110,
          width: 180,
          //color: Colors.red,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(img),
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: kFontPrimaryColor)
            ),
          ),
        ),
      ),
    );
  }

  Container buildContainerTwo(String img,  String title, String subtitle) {
      return Container(
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => StadiumDetail()));
          },
            child: Container(
            height: 110,
            width: 180,
            //color: Colors.red,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(img),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kFontPrimaryColor)),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kFontPrimaryColor)),
                ],
              ),
            ),
          ),
        ),
      );
    }
}