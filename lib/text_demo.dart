import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          "calculator",
          style: TextStyle(
              color: Colors.red, fontSize: 23, fontStyle: FontStyle.italic),
        ),
        SizedBox(height: 45),
        Text(
          "ujjal dhakal",
          style: TextStyle(
              color: Colors.red, fontSize: 23, fontStyle: FontStyle.italic),
        ),
      ],
    ));
  }
}
