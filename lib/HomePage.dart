import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  color: const Color(0xff121328),
                  hoverColor: const Color(0xff1D1F34),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          color: Colors.white,
                          size: 100,
                        ),
                        SizedBox(height: 10,),
                        Text("Male", style: TextStyle(fontSize: 20, color: Colors.white),),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  color: const Color(0xff121328),
                  hoverColor: const Color(0xff1D1F34),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          color: Colors.white,
                          size: 100,
                        ),
                        SizedBox(height: 10,),
                        Text("Male", style: TextStyle(fontSize: 20, color: Colors.white),),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
