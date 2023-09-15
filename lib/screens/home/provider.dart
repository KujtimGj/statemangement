import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:statemanagement/business/api/completedServices.dart';
import 'package:statemanagement/business/model/completedServiceModel.dart';


class ProviderDart extends StatefulWidget {
  const ProviderDart({Key? key}) : super(key: key);

  @override
  State<ProviderDart> createState() => _ProviderDartState();
}

class _ProviderDartState extends State<ProviderDart> {



  // @override
  // void initState() {
  //   getCompletedServices(context);
  //   super.initState();
  // }

  List<CompletedServiceModel>? csm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title:const Text("Provider"),
        backgroundColor: Colors.indigo,
      ),
      body:SingleChildScrollView(
        child: Column(

        ),
      )
    );
  }
}
