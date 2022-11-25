import 'package:calculator/number_botton.dart';
import 'package:eval_ex/expression.dart';
import 'package:flutter/material.dart';
import 'package:infix_expression_parser/expression_evaluator.dart';
import 'package:infix_expression_parser/infix_expression_converter.dart';

import 'cotainer.dart';

void main(List<String> args) async {
  runApp(MyContainer());
}

class MyContainer extends StatefulWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  String exp = "";

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 300,
      width: 200,
      decoration: BoxDecoration(color: Colors.white, border: Border.all()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 4,
          ),
          Container(
              height: 45,
              width: 170,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(8)),
                shape: BoxShape.rectangle,
              ),
              child: Text(exp)),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "1";
                  });
                },
                child: NumberBotton(
                  num: "1",
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "2";
                  });
                },
                child: NumberBotton(
                  num: "2",
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "3";
                  });
                },
                child: NumberBotton(
                  num: "3",
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "+";
                  });
                },
                child: NumberBotton(
                  num: "+",
                  color: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "4";
                  });
                },
                child: NumberBotton(
                  num: "4",
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "5";
                  });
                },
                child: NumberBotton(
                  num: "5",
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "6";
                  });
                },
                child: NumberBotton(
                  num: "6",
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "-";
                  });
                },
                child: NumberBotton(
                  num: "-",
                  color: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "7";
                  });
                },
                child: NumberBotton(
                  num: "7",
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "8";
                  });
                },
                child: NumberBotton(
                  num: "8",
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "9";
                  });
                },
                child: NumberBotton(
                  num: "9",
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "*";
                  });
                },
                child: NumberBotton(
                  num: "*",
                  color: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "0";
                  });
                },
                child: NumberBotton(
                  num: "0",
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "(";
                  });
                },
                child: NumberBotton(
                  num: "(",
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp += ")";
                  });
                },
                child: NumberBotton(
                  num: ")",
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "/";
                  });
                },
                child: NumberBotton(
                  num: "/",
                  color: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Builder(builder: (context) {
                return InkWell(
                  onTap: () {
                    Expression expression = Expression(exp);

                    setState(() {
                      exp = expression.eval().toString();
                    });
                  },
                  child: NumberBotton(
                    num: "=",
                    color: Colors.blue,
                  ),
                );
              }),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp += ".";
                  });
                },
                child: NumberBotton(
                  num: ".",
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp = exp.substring(0, exp.length - 1);
                  });
                },
                child: NumberBotton(
                  num: "DEL",
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp = "";
                  });
                },
                child: NumberBotton(
                  num: "AC",
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
