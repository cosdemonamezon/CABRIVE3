import 'package:CABRIVE/Screen/Chat/ChatDetail.dart';
import 'package:CABRIVE/Screen/Home/HomeScreen.dart';
import 'package:CABRIVE/Screen/Widgets/NavigationBar.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:CABRIVE/Screen/Chat/Chatmodels/user_model.dart';
import 'package:CABRIVE/Screen/Chat/Chatmodels/message_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({Key key, this.user}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _searchController = TextEditingController();
  @override
  void dispose() {
    _searchController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int prevUserId;
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                      (route) => false);
                }),
            bottom: TabBar(
                //indicatorColor: Colors.red,

                labelColor: kButtonColor,
                unselectedLabelColor: kFontPrimaryColor,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: kCicleColor,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: kBackgroundColor),
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Chat",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Member",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                physics: const ClampingScrollPhysics(),
                children: [
                  _searchWidget(),
                  Container(
                    height: height,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: const ClampingScrollPhysics(),
                      itemCount: chats.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Message chat = chats[index];
                        return GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ChatDetail(
                                user: chat.sender,
                              ),
                            ),
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: chat.unread
                                      ? BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(40)),
                                          border: Border.all(
                                            width: 2,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          // shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 5,
                                            ),
                                          ],
                                        )
                                      : BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 5,
                                            ),
                                          ],
                                        ),
                                  child: CircleAvatar(
                                    radius: 35,
                                    backgroundImage:
                                        AssetImage(chat.sender.imageUrl),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.65,
                                  padding: EdgeInsets.only(
                                    left: 20,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                chat.sender.name,
                                                style: TextStyle(
                                                  color: kFontPrimaryColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              chat.sender.isOnline
                                                  ? Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 5),
                                                      width: 7,
                                                      height: 7,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                      ),
                                                    )
                                                  : Container(
                                                      child: null,
                                                    ),
                                            ],
                                          ),
                                          Text(
                                            chat.time,
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w300,
                                              color: kInputColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          chat.text,
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: kInputColor,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                _searchWidget(),
                _cardMember("assets/images/nick-fury.jpg", "Nick Fury"),
                _cardMember("assets/images/scarlet-witch.jpg", "Scarlet Witch"),
                _cardMember("assets/images/black-widow.jpg", "Black Widow"),
                _cardMember("assets/images/thor.png", "Thor Odinson"),
                _cardMember(
                    "assets/images/captain-america.jpg", "Captain America"),
              ],
            ),
          ]),
          bottomNavigationBar: NavigationBar(title: "chat"),
        ));
  }

  Widget _cardMember(String img, String name) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        color: kBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.cover, image: AssetImage(img)))),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                        color: kFontPrimaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _searchWidget() {
    return Container(
      height: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: kInputSearchColor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: "Search...",
          border: InputBorder.none,
          //suffixIcon: Icon(Icons.mic),
          prefixIcon: Icon(
            Icons.search,
            color: kFontPrimaryColor,
          ),
        ),
      ),
    );
  }
}
