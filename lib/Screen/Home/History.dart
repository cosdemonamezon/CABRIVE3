import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  History({Key key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;print(width);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kInputSearchColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), 
          onPressed: (){            
            Navigator.pop(context);
          }
        ),
        centerTitle: true,
        title: Text("HISTORY"),
      ),
      body: Container(
        color: kInputSearchColor,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Top-up to Wallet",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                      ),
                      Text(
                        "23-01-2021 00:31",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kHintextColor)
                      ),
                    ],
                  ),

                  Text(
                    "+3000.00 USD",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.green)
                  ),
                ],
              ),
              Divider(thickness: 2, color: kFontSecondTextColor,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Withdrawal",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                      ),
                      Text(
                        "23-01-2021 00:31",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kHintextColor)
                      ),
                    ],
                  ),

                  Text(
                    "-200.00 USD",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: kHintextColor)
                  ),
                ],
              ),
              Divider(thickness: 2, color: kFontSecondTextColor,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Buy Seat",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                      ),
                      Text(
                        "23-01-2021 00:31",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kHintextColor)
                      ),
                    ],
                  ),

                  Text(
                    "-600.00 USD",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: kHintextColor)
                  ),
                ],
              ),
              Divider(thickness: 2, color: kFontSecondTextColor,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Top-up to Wallet",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                      ),
                      Text(
                        "23-01-2021 00:31",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kHintextColor)
                      ),
                    ],
                  ),

                  Text(
                    "+420.00 USD",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.green)
                  ),
                ],
              ),
              Divider(thickness: 2, color: kFontSecondTextColor,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Top-up to Wallet",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                      ),
                      Text(
                        "23-01-2021 00:31",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kHintextColor)
                      ),
                    ],
                  ),

                  Text(
                    "+3000.00 USD",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.green)
                  ),
                ],
              ),
              Divider(thickness: 2, color: kFontSecondTextColor,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Withdrawal",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                      ),
                      Text(
                        "23-01-2021 00:31",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kHintextColor)
                      ),
                    ],
                  ),

                  Text(
                    "-200.00 USD",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: kHintextColor)
                  ),
                ],
              ),
              Divider(thickness: 2, color: kFontSecondTextColor,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Buy Seat",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                      ),
                      Text(
                        "23-01-2021 00:31",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kHintextColor)
                      ),
                    ],
                  ),

                  Text(
                    "-600.00 USD",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: kHintextColor)
                  ),
                ],
              ),
              Divider(thickness: 2, color: kFontSecondTextColor,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Top-up to Wallet",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                      ),
                      Text(
                        "23-01-2021 00:31",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kHintextColor)
                      ),
                    ],
                  ),

                  Text(
                    "+420.00 USD",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.green)
                  ),
                ],
              ),
              Divider(thickness: 2, color: kFontSecondTextColor,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Top-up to Wallet",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                      ),
                      Text(
                        "23-01-2021 00:31",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kHintextColor)
                      ),
                    ],
                  ),

                  Text(
                    "+3000.00 USD",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.green)
                  ),
                ],
              ),
              Divider(thickness: 2, color: kFontSecondTextColor,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Withdrawal",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                      ),
                      Text(
                        "23-01-2021 00:31",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kHintextColor)
                      ),
                    ],
                  ),

                  Text(
                    "-200.00 USD",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: kHintextColor)
                  ),
                ],
              ),
              Divider(thickness: 2, color: kFontSecondTextColor,),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}