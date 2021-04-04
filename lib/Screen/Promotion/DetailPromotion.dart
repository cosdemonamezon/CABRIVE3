import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:CABRIVE/Screen/Promotion/PromotionScreen.dart';

class DetailPromotion extends StatefulWidget {
  DetailPromotion({Key key}) : super(key: key);

  @override
  _DetailPromotionState createState() => _DetailPromotionState();
}

class _DetailPromotionState extends State<DetailPromotion> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), 
          onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => PromotionScreen()), (route) => false);
          }
        ),
        centerTitle: true,
        title: Text("DETAIL"),
      ),
      body: Container(
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              //color: Colors.red,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  // topLeft: Radius.circular(18),
                  // topRight: Radius.circular(18),
                  // bottomLeft: Radius.circular(18),
                  // bottomRight: Radius.circular(18),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/131982946_3631407893569243_1613121772109122784_n.jpg"),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Text(
              "Vestibulum blandit viverra convallis. Pellentesque ligula urna, fermentum ut semper in, tincidunt nec dui. Morbi mauris lacus, consequat eget justo in, semper gravida enim. Donec ultrices varius ligula. Ut non pretium augue. Etiam non rutrum metus. In varius sit amet lorem tempus sagittis. Cras sed maximus enim, vel ultricies tortor. Pellentesque consectetur tellus ornare felis porta dapibus. Etiam eget viverra ipsum, ac posuere massa. Nam vitae tempor metus. Donec rhoncus, metus ac convallis ultricies, turpis augue vestibulum elit, ut pharetra orci urna quis lectus. Praesent in libero non enim tincidunt imperdiet nec vitae urna. Morbi elementum non enim eget aliquet. Vivamus fermentum quam magna, ac cursus neque pulvinar feugiat. Nulla facilisi.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: kHintextColor),
            ),
            SizedBox(height: 40,),
            
          ],
        ),
      ),
    );
  }
}