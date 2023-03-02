import 'package:flutter/material.dart';
import 'formula.dart';

class Result extends StatefulWidget {
  int weight;
  int height;
  int age;

  Result({required this.weight, required this.height, required this.age});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  Logic L = Logic();
  double bmiResult = 0;
  String Txt = ' ';

  @override
  void initState() {
    bmiResult = L.calculate(widget.height, widget.weight);
    if (widget.height == 0 || widget.weight == 0) {
      bmiResult = 0;
    }
    if (bmiResult >= 25.6) {
      Txt = "Over Weight";
    } else if (bmiResult >= 18.3) {
      Txt = "Normal";
    } else {
      Txt = "Under Weight";
    }
    super.initState();
  }

  // void getResult() {
  //   if (bmiResult >= 28) {
  //     Txt = "Over Weight";
  //   } else if (bmiResult >= 20) {
  //     Txt = "Normal";
  //   } else {
  //     Txt = "Under Weight";
  //   }
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(15.0),
          height: 400.0,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "BMI RESULTS ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  Txt,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40.0,
                    fontFamily: 'Lora Italic',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  bmiResult.toStringAsFixed(1),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
