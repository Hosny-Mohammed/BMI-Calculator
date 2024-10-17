import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double height;

  final int weight;

  final int age;

  static double result = 0;

  ResultPage(
      {super.key,
      required this.height,
      required this.weight,
      required this.age}) {
    double m = (height * height)/10000;
    int kg = weight;
    result = kg / m;
  }

  static bool Calc() {
    if (result >= 18.5 && result <= 24.9) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: const Color(0xFF161926),
      ),
      body: Container(
        color: const Color(0xFF161926),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Your Result" ,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff1D1F34),
                  boxShadow: const [
                    BoxShadow(color: Color(0xff1D1F34), spreadRadius: 3),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      result.toStringAsFixed(2),
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      Calc()? "Good" : "Bad",
                      style: TextStyle(
                          color: Calc()? Colors.green : Colors.redAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      Calc()? "You have a normal body weight" : "You should see a doctor, Plus-sized",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w200),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.redAccent,
                  child: const Text(
                    "Re-Calculate",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
