import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/business/api/api.dart';
import 'package:statemanagement/business/model/completedServiceModel.dart';
import 'package:statemanagement/business/provider/completedServicesProvider.dart';

getCompletedServices(context)async{
  var csProvider = Provider.of<CompletedServiceProvider>(context, listen:false);
  var fullUrl = '/completedServices';
  csProvider.startFetching();
  var response = await Api().getData(fullUrl, context);
  var csList = response.map<CompletedServiceModel>((json)=>CompletedServiceModel.fromJson(json)).toList();
  csProvider.addAllCS(csList);
  print(csList);
  csProvider.stopFetching();
}