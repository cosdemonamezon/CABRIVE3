import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';

class ShopDetail extends StatefulWidget {
  ShopDetail({Key key}) : super(key: key);

  @override
  _ShopDetailState createState() => _ShopDetailState();
}

class _ShopDetailState extends State<ShopDetail> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kInputSearchColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), 
          onPressed: (){            
            Navigator.pop(context);
          }
        ),
        centerTitle: true,
        title: Text("SHOP"),
      ),
      body: Container(
        color: kTextButtonColor,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60,),
              Center(
                child: Container(
                  height: height*0.25,
                  width: width*0.62,
                  //color: Colors.red,
                  child: Image.asset("assets/c6.png", fit: BoxFit.cover,),
                ),
              ),
              SizedBox(height: 30,),
              Container(
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
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 85,
                        width: 85,
                        //color: kHintextColor,
                        child: Image.asset("assets/logo/shop1.png", fit: BoxFit.cover,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lorem Ipsum",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: kLinkTextColor)
                          ),
                          Text(
                            "We and our partners store",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: kLinkTextColor)
                          ),
                          Text(
                            "and access information on device,",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: kLinkTextColor)
                          ),
                          Text(
                            "such as cookies and process personal",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: kLinkTextColor)
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
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
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 83,
                        width: 83,
                        //color: kHintextColor,
                        child: Image.asset("assets/logo/shop2.png", fit: BoxFit.cover,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lorem Ipsum",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: kLinkTextColor)
                          ),
                          Text(
                            "We and our partners store",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: kLinkTextColor)
                          ),
                          Text(
                            "and access information on device,",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: kLinkTextColor)
                          ),
                          Text(
                            "such as cookies and process personal",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: kLinkTextColor)
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
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
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 85,
                        width: 85,
                        //color: kHintextColor,
                        child: Image.asset("assets/logo/shop3.png", fit: BoxFit.cover,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lorem Ipsum",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: kLinkTextColor)
                          ),
                          Text(
                            "We and our partners store",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: kLinkTextColor)
                          ),
                          Text(
                            "and access information on device,",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: kLinkTextColor)
                          ),
                          Text(
                            "such as cookies and process personal",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: kLinkTextColor)
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
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
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 85,
                        width: 85,
                        //color: kHintextColor,
                        child: Image.asset("assets/logo/shop4.png", fit: BoxFit.fill,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lorem Ipsum",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: kLinkTextColor)
                          ),
                          Text(
                            "We and our partners store",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: kLinkTextColor)
                          ),
                          Text(
                            "and access information on device,",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: kLinkTextColor)
                          ),
                          Text(
                            "such as cookies and process personal",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: kLinkTextColor)
                          ),
                        ],
                      ),
                    ),
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