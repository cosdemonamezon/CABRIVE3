import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Numpad extends StatefulWidget {
  final int length;
  final Function onChange;
  Numpad({Key key, this.length, this.onChange}) : super(key: key);

  @override
  _NumpadState createState() => _NumpadState();
}

class _NumpadState extends State<Numpad> {
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
    return Container(
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumpadButton(haveBorder: false),
              NumpadButton(
                text: '0',
                onPressed: () => setValue('0'),
              ),
              NumpadButton(
                haveBorder: false,
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
        padding: EdgeInsets.symmetric(vertical: 30.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Wrap(children: previewLength),
        ));
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
          color: isActive ? kLinkTextColor : Theme.of(context).primaryColor,
          border: Border.all(width: 1.0, color: kLinkTextColor),
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
    TextStyle buttonStyle = TextStyle(fontSize: 22.0, color: kLinkTextColor);
    Widget label = icon != null
        ? Icon(
            icon,
            color: kLinkTextColor.withOpacity(0.8),
            size: 35.0,
          )
        : Text(this.text ?? '', style: buttonStyle);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: OutlineButton(
        borderSide:
            haveBorder ? BorderSide(color: Colors.grey[400]) : BorderSide.none,
        highlightedBorderColor: icon != null
            ? kLinkTextColor
            : Theme.of(context).primaryColor.withOpacity(0.3),
        splashColor: icon != null
            ? kLinkTextColor
            : Theme.of(context).primaryColor.withOpacity(0.1),
        padding: EdgeInsets.all(20.0),
        shape: CircleBorder(),
        onPressed: onPressed,
        child: label,
      ),
    );
  }
}
