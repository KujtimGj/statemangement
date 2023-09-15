import 'package:flutter/material.dart';

class Bloc extends StatelessWidget {
  const Bloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title:const Text("Bloc"),
        backgroundColor: Colors.amber,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
