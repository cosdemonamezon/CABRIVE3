import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Numberpad extends StatefulWidget {
  final int length;
  final Function onChange;
  Numberpad({Key key, this.length, this.onChange}) : super(key: key);

  @override
  _NumberpadState createState() => _NumberpadState();
}

class _NumberpadState extends State<Numberpad> {
  String number = '';

  setValue(String val) {
    if (number.length < widget.length)
      setState(() {
        number += val;
        widget.onChange(number);
      });
  }

  backspace(String text) {
    if (text.length > 0) {
      setState(() {
        number = text.split('').sublist(0, text.length - 1).join('');
        widget.onChange(number);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
      child: Column(
        children: [
          Preview(text: number, length: widget.length),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumpadButton(
                text: '1',
                onPressed: () => setValue('1'),
              ),
              NumpadButton(
                text: '2',
                onPressed: () => setValue('2'),
              ),
              NumpadButton(
                text: '3',
                onPressed: () => setValue('3'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumpadButton(
                text: '4',
                onPressed: () => setValue('4'),
              ),
              NumpadButton(
                text: '5',
                onPressed: () => setValue('5'),
              ),
              NumpadButton(
                text: '6',
                onPressed: () => setValue('6'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumpadButton(
                text: '7',
                onPressed: () => setValue('7'),
              ),
              NumpadButton(
                text: '8',
                onPressed: () => setValue('8'),
              ),
              NumpadButton(
                text: '9',
                onPressed: () => setValue('9'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // NumpadButton(
              //   haveBorder: true,
              //   icon: Icons.face,
              // ),
              // Center(
              CircleAvatar(
                backgroundColor: kBackgroundColor,
                radius: 35,
                child: Image.asset(
                  "assets/icons/face_ID.png",
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                  color: kButtonColor,
                ),
              ),

              NumpadButton(
                text: '0',
                onPressed: () => setValue('0'),
              ),
              NumpadButton(
                haveBorder: true,
                icon: Icons.backspace,
                onPressed: () => backspace(number),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Preview extends StatelessWidget {
  final int length;
  final String text;
  const Preview({Key key, this.length, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> previewLength = [];
    for (var i = 0; i < length; i++) {
      previewLength.add(Dot(isActive: text.length >= i + 1));
    }
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Wrap(children: previewLength));
  }
}

class Dot extends StatelessWidget {
  final bool isActive;
  const Dot({Key key, this.isActive = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 15.0,
        height: 15.0,
        decoration: BoxDecoration(
          color: isActive ? kFontPrimaryColor : Colors.transparent,
          border: Border.all(width: 1.0, color: kFontPrimaryColor),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}

class NumpadButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool haveBorder;
  final Function onPressed;
  const NumpadButton(
      {Key key, this.text, this.icon, this.haveBorder = true, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle buttonStyle = TextStyle(fontSize: 22.0, color: kFontPrimaryColor);
    Widget label = icon != null
        ? Icon(
            icon,
            color: kFontPrimaryColor.withOpacity(0.8),
            size: 35.0,
          )
        : Text(this.text ?? '', style: buttonStyle);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: OutlineButton(
        borderSide:
            haveBorder ? BorderSide(color: Colors.grey[400]) : BorderSide.none,
        highlightedBorderColor: icon != null
            ? Colors.transparent
            : kFontPrimaryColor.withOpacity(0.3),
        splashColor: icon != null
            ? Colors.transparent
            : kFontPrimaryColor.withOpacity(0.1),
        padding: EdgeInsets.all(20.0),
        shape: CircleBorder(),
        onPressed: onPressed,
        child: label,
      ),
    );
  }
}
