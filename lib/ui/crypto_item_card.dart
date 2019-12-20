import 'dart:math';

import 'package:flutter/material.dart';
import 'package:time_formatter/time_formatter.dart';

class CryptoCardItem extends StatelessWidget {
  CryptoCardItem(
      {this.name, this.priceInUSD, this.percentageChange, this.lastUpdated});

  final String name, priceInUSD, percentageChange, lastUpdated;

  final constantVerticalSpace = SizedBox(
    height: 8,
  );

  final constantHorizontalSpace = SizedBox(
    width: 16,
  );

  final List<MaterialColor> colors = [
    Colors.pink,
    Colors.red,
    Colors.orange,
    Colors.amber,
    Colors.yellow,
    Colors.lime,
    Colors.green,
    Colors.teal,
    Colors.cyan,
    Colors.blue,
    Colors.indigo,
    Colors.brown,
    Colors.grey,
  ];

  @override
  Widget build(BuildContext context) => Card(
        margin: EdgeInsets.only(left: 24, right: 24, top: 24),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: colors[Random().nextInt(colors.length)],
                child: Text(
                  name[0],
                  style: TextStyle(color: Colors.white),
                ),
              ),
              constantHorizontalSpace,
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  constantVerticalSpace,
                  Text(
                    'Price in USD \$' +
                        num.parse(priceInUSD).toStringAsFixed(3),
                  ),
                  constantVerticalSpace,
                  Text('Last 1 Hour : ' + percentageChange),
                  constantVerticalSpace,
                  Text(
                    'Last Updated : ' +
                        formatTime(
                          num.parse(lastUpdated) * 1000,
                        ),
                  ),
                  // Widget to display the list of project
                ],
              ),
            ],
          ),
        ),
      );
}
