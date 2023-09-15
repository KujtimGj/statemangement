import 'package:flutter/material.dart';
import '../model/completedServiceModel.dart';

class CompletedServiceProvider extends ChangeNotifier{
  List<CompletedServiceModel> completedServices =[];

  bool fetching = false;

  getCompletedServices()=>completedServices;

  addOneCS(CompletedServiceModel csm){
    completedServices.add(csm);
  }

  addAllCS(List<CompletedServiceModel> csm){
    completedServices.addAll(csm);
    notifyListeners();
  }

  startFetching() {fetching = true;notifyListeners();}

  stopFetching(){fetching = false; notifyListeners();}
}