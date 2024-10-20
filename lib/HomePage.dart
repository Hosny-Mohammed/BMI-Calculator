import 'package:bmi_calculator/ResultPage.dart';
import 'package:counter_slider/counter_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPressedF = false;
  bool isPressedM = false;
  double height = 150;
  int weight = 50;
  int age = 20;
  void selectGender(String gender) {
    setState(() {
      if (gender == "Male") {
        isPressedM = true;
        isPressedF = false;
      } else if (gender == "Female") {
        isPressedM = false;
        isPressedF = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF161926),
      ),
      body: Container(
        color: const Color(0xFF161926),
        width: double.infinity,
        height: 690,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    selectGender("Male");
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: (isPressedM)
                      ? const Color(0xff1D1F34)
                      : const Color(0xff121328),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          color: Colors.white,
                          size: 100,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Male",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    selectGender("Female");
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: (isPressedF)
                      ? const Color(0xff1D1F34)
                      : const Color(0xff121328),
                  hoverColor: const Color(0xff1D1F34),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          color: Colors.white,
                          size: 100,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Female",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                height: 180,
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
                    const Text(
                      "Height",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w100),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          height.toStringAsFixed(0),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 35),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("cm",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w200))
                      ],
                    ),
                    Slider(
                      value: height,
                      min: 0,
                      max: 250,
                      label: height.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 140,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff1D1F34),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff1D1F34), spreadRadius: 3),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "Weight",
                              style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white),
                            ),
                            CounterSlider(
                                value: weight,
                                onChanged: (int value) {
                                  setState(() {
                                    weight = value;
                                  });
                                },
                                width: 110,
                                height: 37,
                                slideFactor: 1.49,
                                borderSize: 1,
                                gapSize: 2),
                          ],
                        )),
                    Container(
                        width: 140,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff1D1F34),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff1D1F34), spreadRadius: 3),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "Age",
                              style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white),
                            ),
                            CounterSlider(
                                value: age,
                                onChanged: (int value) {
                                  setState(() {
                                    age = value;
                                  });
                                },
                                width: 110,
                                height: 37,
                                slideFactor: 1.49,
                                borderSize: 1,
                                gapSize: 2),
                          ],
                        )),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    if((isPressedF == false && isPressedM == false) || (weight <= 0) || (age <= 0))
                    {
                      final snackBar = SnackBar(
                        content: const Text('Invalid Data'),
                        backgroundColor: Colors.red,
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }else {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>ResultPage(height: height, weight: weight, age: age,)));
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.redAccent,
                  child: const Text(
                    "Calculate",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
