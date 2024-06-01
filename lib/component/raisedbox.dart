import 'package:flutter/material.dart';
import 'package:livintecchui/constant.dart';

class RaisedBox extends StatelessWidget {
  final String text;
  final Color color;
  final double? height;
  const RaisedBox({
    super.key,
    required this.text,
    required this.color,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          30,
        ),
        color: color,
        border: Border.all(
          color: Colors.black,
        ),
        boxShadow: const [
          BoxShadow(
            color: isDark ? Colors.white : Colors.black,
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(3, 4), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
          ),
        ],
      ),
    );
  }
}
