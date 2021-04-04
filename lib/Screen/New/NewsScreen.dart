import 'package:CABRIVE/Screen/Home/HomeScreen.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:CABRIVE/Screen/New/DetailNews.dart';

class NewsScreen extends StatefulWidget {
  NewsScreen({Key key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
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
        title: Text("NEWS"),
      ),
      body: ListView(
        children: [
          Container(
            height: height,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 10,),
                newsCard(
                  "assets/145191267_3741130079263690_2731191343081539548_o.jpg",
                  "Retrouvez le résumé et le…",
                  "La sirène retentit au Stadium et les Noir et Blanc n’ont rien lâché encore un fois et parviennent à décrocher une précieuse victoire"
                ),
                SizedBox(height: 10,),
                newsCard(
                  "assets/144255167_3737014689675229_3783920849437474356_o.jpg",
                  "⏱ MI-TEMPS",
                  "Après une première période engagée, les Noir et Blanc rentrent aux vestiaires avec 6 points d’avance au tableau d’affichage."
                ),
                SizedBox(height: 10,),
                newsCard(
                  "assets/131935758_3624002657643100_2330089908347051597_n.jpg",
                  "« LA » photo qui donne",
                  "TOUJOURS le sourire, même pour la 3ème fois en un peu plus d’un mois !  Bravo à tous 👏👏👏⚫️⚪️"
                ),
                SizedBox(height: 10,),
                newsCard(
                  "assets/144482999_3737138806329484_4986658706291405403_o.jpg",
                  "C’est une troisième ",
                  "victoire de la saison à l’extérieur et un nouveau grand pas de fait vers le maintien pour le CAB qui s’impose à Pau ! 👏⚪️⚫️"
                ),
                SizedBox(height: 10,),
                newsCard(
                  "assets/142130192_3723244804385551_7472341975798282192_o.jpg",
                  "[ARBITRES #CABRCT]",
                  "🙋‍♂️🏉 La rencontre face à Toulon sera dirigée par Adrien Descottes assisté de Thomas Charabas et Christophe Bats sur la touche. Cédric Marchat sera."
                ),
                SizedBox(height: 10,),
                newsCard(
                  "assets/144241294_3734758989900799_1924641855745037453_o.jpg",
                  "Et pour finir la]",
                  "Les ⚫️⚪️ recevront le RCT - Rugby Club Toulonnais le samedi 3⃣0⃣ janvier à 18h15 au Stadium ."
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container newsCard(String img, String title, String subtitle) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: kInputSearchColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
        ),
      ),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailNews()));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,                          
                decoration: BoxDecoration(
                  //color: Colors.red,
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
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,),
                      child: Text(
                        title,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: kFontPrimaryColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        subtitle,
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: kFontSecondTextColor),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}