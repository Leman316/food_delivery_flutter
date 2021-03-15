import 'package:flutter/material.dart';

class Persons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Persons",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              )),
          CustomPersonWidget(),
        ],
      ),
    );
  }
}

class CustomPersonWidget extends StatefulWidget {
  @override
  _CustomPersonWidgetState createState() => _CustomPersonWidgetState();
}

class _CustomPersonWidgetState extends State<CustomPersonWidget> {
  int no_Person = 0;
  double _buttonWidth = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(10),
      width: 120,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            height: _buttonWidth,
            width: _buttonWidth,
            child: TextButton(
                onPressed: () {
                  setState(() {
                    if (no_Person > 1) no_Person--;
                  });
                },
                child: Text(
                  '-',
                  style: TextStyle(fontSize: 15),
                )),
          ),
          Text(
            '$no_Person',
            style: TextStyle(
                fontSize: 28, color: Colors.black, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: _buttonWidth,
            width: _buttonWidth,
            child: TextButton(
                onPressed: () {
                  setState(() {
                    no_Person++;
                  });
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 15),
                )),
          ),
        ],
      ),
    );
  }
}
