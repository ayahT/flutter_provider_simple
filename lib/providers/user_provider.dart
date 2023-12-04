import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String? name ='Ayah';
  UserProvider();
  void setName(String newName) async{
    name = newName;
    notifyListeners();
  }
}
