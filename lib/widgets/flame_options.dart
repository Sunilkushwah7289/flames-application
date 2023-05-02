import 'dart:ui';

import 'package:flutter/material.dart';

class FlameOptions extends StatelessWidget {
  const FlameOptions({Key? key}) : super(key: key);

  _getStyle({Color color = Colors.pink}) {
    return TextStyle(fontSize: 30, color: color, fontWeight: FontWeight.bold);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'F - Friend..😊',
            style: _getStyle(),
          ),
          Text(
            'L - Love..❤️',
            style: _getStyle(),
          ),
          Text(
            'A - Affication..🤔',
            style: _getStyle(),
          ),
          Text(
            'M - Marriage..💕💕',
            style: _getStyle(),
          ),
          Text(
            'E - Enemy..😤',
            style: _getStyle(),
          ),
          Text(
            'S - Sister..🥰',
            style: _getStyle(),
          )
        ],
      ),
    );
  }
}
