import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/business/provider/completedServicesProvider.dart';
import 'package:statemanagement/business/provider/serverProvider.dart';
import 'package:statemanagement/screens/home/bloc.dart';
import 'package:statemanagement/screens/home/getx.dart';
import 'package:statemanagement/screens/home/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>CompletedServiceProvider()),
        ChangeNotifierProvider(create: (_)=>ServerProvider())
      ],
      child: const MaterialApp(
        home: Base(),
      ),
    );
  }
}

class Base extends StatefulWidget {
  const Base({Key? key}) : super(key: key);

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  int selectedIndex = 0;

  static final List<Widget> _widgetOptions = [
    const Bloc(),
    const GetXDart(),
    const ProviderDart(),
  ];
  void _onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_max,color: Colors.indigo,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.abc,color: Colors.indigo,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit,color: Colors.indigo,), label: ''),
        ],
      ),
    );
  }
}
