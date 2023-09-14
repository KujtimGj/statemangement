import 'package:flutter/material.dart';

class ServerProvider extends ChangeNotifier{
  bool serverActive = true;

  checkServer() => serverActive;

  changeServerStatus(bool status){
    serverActive = status;
    notifyListeners();
  }
}