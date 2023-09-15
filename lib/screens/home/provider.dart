import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:statemanagement/business/api/completedServices.dart';
import 'package:statemanagement/business/model/completedServiceModel.dart';
import 'package:statemanagement/business/provider/completedServicesProvider.dart';


class ProviderDart extends StatefulWidget {
  const ProviderDart({Key? key}) : super(key: key);

  @override
  State<ProviderDart> createState() => _ProviderDartState();
}

class _ProviderDartState extends State<ProviderDart> {





  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getCompletedServices(context);
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var list = Provider.of<CompletedServiceProvider>(context);
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title:const Text("Provider"),
        backgroundColor: Colors.indigo,
      ),

      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: list.getCompletedServices().length,
          itemBuilder: (BuildContext context, int index){
            print(list.getCompletedServices().length);
            return Text(list.getCompletedServices()[index].staffEmail);
          },
        ),
      ),
    );
  }
}
