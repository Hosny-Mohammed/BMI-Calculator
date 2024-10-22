import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
class HomeProvider extends ChangeNotifier{
  bool isPressedF = false;
  bool isPressedM = false;
  double height = 150;
  int weight = 50;
  int age = 20;
  void selectGender(String gender) {
      if (gender == "Male") {
        isPressedM = true;
        isPressedF = false;
      } else if (gender == "Female") {
        isPressedM = false;
        isPressedF = true;
      }
      notifyListeners();
  }
  void setHeight(double value){
    height = value;
    notifyListeners();
  }
  void setWeight(int value){
    weight = value;
    notifyListeners();
  }
  void setAge(int value){
    age = value;
    notifyListeners();
  }
}