import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final String restaurant;
  final String name;
  final double price;
  final String imgUrl;
  final bool leftAligned;

  Items(
      {@required this.restaurant,
      @required this.name,
      @required this.price,
      @required this.imgUrl,
      @required this.leftAligned});

  @override
  Widget build(BuildContext context) {
    double containerPadding = 45;
    double containerBorderRadius = 10;

    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            left: leftAligned ? 0 : containerPadding,
            right: leftAligned ? containerPadding : 0,
          ),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.horizontal(
                    left: leftAligned
                        ? Radius.circular(0)
                        : Radius.circular(containerBorderRadius),
                    right: leftAligned
                        ? Radius.circular(containerBorderRadius)
                        : Radius.circular(0),
                  ),
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: leftAligned ? 20 : 0,
                  right: leftAligned ? 0 : 20,
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(name,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              )),
                        ),
                        Text("\$$price",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            )),
                      ],
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                            style:
                                TextStyle(color: Colors.black45, fontSize: 15),
                            children: [
                              TextSpan(text: "by "),
                              TextSpan(
                                  text: restaurant,
                                  style: TextStyle(fontWeight: FontWeight.w700))
                            ]),
                      ),
                    ),
                    SizedBox(height: containerPadding),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
