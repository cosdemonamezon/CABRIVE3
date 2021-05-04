import 'package:CABRIVE/Screen/Home/HomeScreen.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:CABRIVE/Screen/New/DetailNews.dart';
import 'package:CABRIVE/Screen/Stadium/buyticket.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:intl/intl.dart' show DateFormat;

import 'package:CABRIVE/Screen/Widgets/NavigationBar.dart';
import 'package:CABRIVE/Screen/Calendar/ScheduleDetail.dart';
import 'package:CABRIVE/Screen/Calendar/CalendarOne.dart';

class CalendarScreen extends StatefulWidget {
  CalendarScreen({Key key}) : super(key: key);

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime _currentDate = DateTime(2021, 2, 3);
  DateTime _currentDate2 = DateTime(2021, 2, 3);
  String _currentMonth = DateFormat.yMMM().format(DateTime(2021, 2, 3));
  DateTime _targetDateTime = DateTime(2021, 2, 3);
//  List<DateTime> _markedDate = [DateTime(2018, 9, 20), DateTime(2018, 10, 11)];
  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: new Icon(
      Icons.person,
      color: Colors.white,
    ),
  );

  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {
      new DateTime(2021, 2, 10): [
        new Event(
          date: new DateTime(2021, 2, 10),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.white,
            height: 5.0,
            width: 5.0,
          ),
        ),
        new Event(
          date: new DateTime(2021, 2, 10),
          title: 'Event 2',
          icon: _eventIcon,
        ),
        new Event(
          date: new DateTime(2021, 2, 10),
          title: 'Event 3',
          icon: _eventIcon,
        ),
      ],
    },
  );

  CalendarCarousel _calendarCarousel, _calendarCarouselNoHeader;

  @override
  Widget build(BuildContext context) {
    /// Example with custom icon
    _calendarCarousel = CalendarCarousel<Event>(
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate = date);
        events.forEach((event) => print(event.title));
        //print('long pressed date ');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CalendarOne()));
      },
      weekendTextStyle: TextStyle(
        color: Colors.white,
      ),
      weekdayTextStyle: TextStyle(
        color: Colors.white,
      ),
      thisMonthDayBorderColor: Colors.white,
//          weekDays: null, /// for pass null when you do not want to render weekDays
      headerText: _currentMonth,
      weekFormat: true,
      // markedDatesMap: _markedDateMap,
      height: 200.0,
      selectedDateTime: _currentDate2,
      showIconBehindDayText: false,
//          daysHaveCircularBorder: false, /// null for not rendering any border, true for circular border, false for rectangular border
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      // markedDateShowIcon: true,
      // markedDateIconMaxShown: 2,
      selectedDayTextStyle:
          TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      selectedDayBorderColor: kButtonColor,
      selectedDayButtonColor: kButtonColor,
      headerTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
      iconColor: Colors.white,
      // dayButtonColor: kButtonColor,
      nextDaysTextStyle: TextStyle(
        color: Colors.white,
      ),
      daysTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      markedDateIconBuilder: (event) {
        return event.icon;
      },
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      todayButtonColor: kButtonColor,
      todayBorderColor: kButtonColor,
      markedDateMoreShowTotal:
          true, // null for not showing hidden events indicator
//          markedDateIconMargin: 9,
//          markedDateIconOffset: 3,
    );

    /// Example Calendar Carousel without header and custom prev & next button
    _calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
        print('long pressed date ');
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      weekendTextStyle: TextStyle(
        color: Colors.white,
      ),
      weekdayTextStyle: TextStyle(
        color: Colors.white,
      ),
      thisMonthDayBorderColor: Colors.transparent,
      weekFormat: false,
//      firstDayOfWeek: 4,
      // markedDatesMap: _markedDateMap,
      height: 340.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder:
          CircleBorder(side: BorderSide(color: kButtonColor)),
      markedDateCustomTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
      showHeader: false,
      markedDateShowIcon: true,
      markedDateIconMaxShown: 2,
      markedDateIconBuilder: (event) {
        return event.icon;
      },
      markedDateMoreShowTotal: true,
      todayButtonColor: kButtonColor,
      selectedDayTextStyle:
          TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      selectedDayBorderColor: kButtonColor,
      selectedDayButtonColor: kButtonColor,
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      prevDaysTextStyle: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
      inactiveDaysTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      inactiveWeekendTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      markedDateIconBorderColor: kButtonColor,
      markedDateMoreCustomTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      daysTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
          print('long pressed date $date');
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );

    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kInputSearchColor,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(null),
          ),
        ],
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                  (route) => false);
            }),
        centerTitle: true,
        title: null,
      ),
      body: ListView(
        children: [
          Container(
            // margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                // topLeft: Radius.circular(18),
                // topRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //custom icon
                Container(
                  color: kBackgroundColor,
                  margin: EdgeInsets.symmetric(horizontal: 16.0),
                  child: _calendarCarousel,
                ), // This trailing comma makes auto-formatting nicer for build methods.
                //custom icon without header
                Container(
                  color: kBackgroundColor,
                  margin: EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: new Row(
                    children: <Widget>[
                      // Expanded(
                      //     child: Text(
                      //   _currentMonth,
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 24.0,
                      //     color: Colors.white,
                      //   ),
                      // )),
                      //   FlatButton(
                      //     child: Text(
                      //       'PREV',
                      //       style: TextStyle(
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 14.0,
                      //         color: Colors.white,
                      //       ),
                      //     ),
                      //     onPressed: () {
                      //       setState(() {
                      //         _targetDateTime = DateTime(_targetDateTime.year,
                      //             _targetDateTime.month - 1);
                      //         _currentMonth =
                      //             DateFormat.yMMM().format(_targetDateTime);
                      //       });
                      //     },
                      //   ),
                      //   FlatButton(
                      //     child: Text(
                      //       'NEXT',
                      //       style: TextStyle(
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 14.0,
                      //         color: Colors.white,
                      //       ),
                      //     ),
                      //     onPressed: () {
                      //       setState(() {
                      //         _targetDateTime = DateTime(_targetDateTime.year,
                      //             _targetDateTime.month + 1);
                      //         _currentMonth =
                      //             DateFormat.yMMM().format(_targetDateTime);
                      //       });
                      //     },
                      //   )
                    ],
                  ),
                ),
                // Container(
                //   color: kBackgroundColor,
                //   margin: EdgeInsets.symmetric(horizontal: 16.0),
                //   child: _calendarCarouselNoHeader,
                // ), //
              ],
            ),
          ),
          Container(
            height: height,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Schedule",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: kFontPrimaryColor),
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => CalendarOne()));
                    //   },
                    //   child: Container(
                    //     height: 20,
                    //     width: 60,
                    //     color: Colors.redAccent,
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                newsCard_1(
                    "assets/145191267_3741130079263690_2731191343081539548_o.jpg",
                    "Retrouvez le résumé et le…",
                    "La sirène retentit au Stadium et les Noir et Blanc n’ont rien lâché encore un fois et parviennent à décrocher une précieuse victoire"),
                SizedBox(
                  height: 10,
                ),
                newsCard_2(
                    "assets/144255167_3737014689675229_3783920849437474356_o.jpg",
                    "⏱ MI-TEMPS",
                    "Après une première période engagée, les Noir et Blanc rentrent aux vestiaires avec 6 points d’avance au tableau d’affichage."),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(title: "calendar"),
    );
  }

  Container newsCard_1(String img, String title, String subtitle) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
        ),
      ),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScheduleDetail()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Text(
                      "10:00AM",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: kFontPrimaryColor),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Container(
                        height: 59,
                        width: 59,
                        margin: const EdgeInsets.only(top: 20),
                        //color: Colors.amber,
                        //child: SvgPicture.asset("assets/icons/Image 5.svg"),
                        child: Image.asset(
                          "assets/logo/Image5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "LA ROCH.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: kFontPrimaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "VS",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: kFontPrimaryColor),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 7),
                      child: Column(
                        children: [
                          Container(
                            height: 49,
                            width: 49,
                            margin: const EdgeInsets.only(top: 20),
                            child: Image.asset(
                              "assets/logo/surface1.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              "BAYONNE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: kFontPrimaryColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container newsCard_2(String img, String title, String subtitle) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
        ),
      ),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Buyticket()));
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScheduleDetail()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Text(
                      "10:00AM",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: kFontPrimaryColor),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Container(
                        height: 49,
                        width: 49,
                        //color: Colors.amber,
                        margin: const EdgeInsets.only(top: 25),
                        child: Image.asset(
                          "assets/logo/STADE_ROCHELAIS.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "AGEN",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: kFontPrimaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "VS",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: kFontPrimaryColor),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Column(
                        children: [
                          Container(
                            height: 49,
                            width: 49,
                            margin: const EdgeInsets.only(top: 20),
                            child: Image.asset(
                              "assets/logo/Image3.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              "BRIVE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: kFontPrimaryColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
