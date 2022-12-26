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
  String top = "";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
        child: Container(
      height: size.height * 0.9,
      width: size.width * 0.95,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.all(Radius.circular(26)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 55,
          ),
          Container(
            height: 80,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(8)),
              shape: BoxShape.rectangle,
            ),
            child: Column(
              children: [
                Text(
                  top,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  exp,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            alignment: Alignment.bottomRight,
          ),
          SizedBox(
            height: 50,
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
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "!";
                  });
                },
                child: NumberBotton(
                  num: "!",
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "{";
                  });
                },
                child: NumberBotton(
                  num: "{",
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "}";
                  });
                },
                child: NumberBotton(
                  num: "}",
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    exp += "^";
                  });
                },
                child: NumberBotton(
                  num: "^",
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
                      top = exp;
                      exp = expression.eval().toString();
                    });
                  },
                  child: NumberBotton(
                    num: "=",
                    color: Colors.green,
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
                    top = "";

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
          SizedBox(
            height: 4,
          ),
        ],
      ),
    ));
  }
}
