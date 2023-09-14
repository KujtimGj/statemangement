import 'package:flutter/material.dart';

class ProviderDart extends StatelessWidget {
  const ProviderDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title:const Text("Provider"),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
