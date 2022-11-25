import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NumberBotton extends StatelessWidget {
  final String num;
  final Color color;

  const NumberBotton({Key? key, required this.num, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      child: Center(child: Text(num)),
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
          width: 1.6,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        shape: BoxShape.rectangle,
        color: color,
      ),
    );
  }
}
