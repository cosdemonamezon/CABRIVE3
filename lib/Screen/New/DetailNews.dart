import 'package:CABRIVE/Screen/New/NewsScreen.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailNews extends StatefulWidget {
  DetailNews({Key key}) : super(key: key);

  @override
  _DetailNewsState createState() => _DetailNewsState();
}

class _DetailNewsState extends State<DetailNews> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), 
          onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => NewsScreen()), (route) => false);
          }
        ),
        centerTitle: true,
        title: Text("DETAIL"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Container(
                  height: 220,
                  width: double.infinity,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/145191267_3741130079263690_2731191343081539548_o.jpg"),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 110,
                      width: 82,
                      //color: Colors.blue,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                          bottomLeft: Radius.circular(14),
                          bottomRight: Radius.circular(14),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/144608882_3741129562597075_1449389103962532175_o.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      height: 110,
                      width: 82,
                      //color: Colors.green,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                          bottomLeft: Radius.circular(14),
                          bottomRight: Radius.circular(14),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/145337107_3741130332596998_1198327403787382672_o.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      height: 110,
                      width: 82,
                      //color: Colors.orange,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                          bottomLeft: Radius.circular(14),
                          bottomRight: Radius.circular(14),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/145232660_3741129715930393_5130650717385289926_o.jpg"),
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 110,
                          width: 82,
                          //color: Colors.purple,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              topRight: Radius.circular(14),
                              bottomLeft: Radius.circular(14),
                              bottomRight: Radius.circular(14),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/142130192_3723244804385551_7472341975798282192_o.jpg"),
                            ),
                          ),
                          
                        ),
                        Container(
                          width: 82,
                          height: 110,
                          //color: Color(0xFFF001117).withOpacity(0.7),
                          decoration: BoxDecoration(
                            color: Color(0xFFF001117).withOpacity(0.7),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              topRight: Radius.circular(14),
                              bottomLeft: Radius.circular(14),
                              bottomRight: Radius.circular(14),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "+3", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20, color: kFontPrimaryColor
                              ),
                            ),
                          ),
                        ),
                      ]
                      
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Card(
                  color: kBackgroundColor,
                  child: ListTile(
                    title: Text(
                      "Retrouvez le résumé et les photos de la victoir",
                      style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20, color: kFontPrimaryColor
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Nulla eleifend pulvinar purus, molestie euismod odio imperdiet ac. Ut sit amet erat nec nibh rhoncus varius in non lorem. Donec nterdum, lectus in convallis pulvinar, enim elit porta sapien, vel finibus erat felis sed neque.Etiam aliquet neque sagittis erat tincidunt aliquam. Vestibulum at neque hendrerit, mollis dolor at, blandit justo. Integer ac interdum purus. In placerat lorem non quam pulvinar molestie ac eget lacus. Proin mollis lobortis",
                        style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 16, color: kFontTextColor
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
          ),
        ),
      ),
    );
  }
}