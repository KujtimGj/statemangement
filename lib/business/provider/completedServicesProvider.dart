import 'package:flutter/material.dart';

import '../model/completedServiceModel.dart';

class CompletedServiceProvider extends ChangeNotifier{
  List<CompletedServiceModel> completedServices =[];

  bool fetching = false;

  getCompletedServices()=>completedServices;

  addCity(CompletedServiceModel csm){
    completedServices.add(csm);
  }

  startFetching() {fetching = true;notifyListeners();}

  stopFetching(){fetching = false; notifyListeners();}




}