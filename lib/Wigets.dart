import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widgets{
  Widget genderButton({required void Function() setState_, required Color color, required String name, required bool isPressed})=>MaterialButton(
    onPressed: () {

    },
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
  );
}