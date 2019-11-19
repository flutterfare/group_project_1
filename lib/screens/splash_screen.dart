import 'dart:async';

import 'package:flutter/material.dart';
import './how_it_works_screen.dart';

// From https://fluttermaster.com/create-splash-screen-in-flutter/
class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  bool _initialized = false; // not used yet

  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future<Timer> loadData() async {
    // load data here
    return await Timer(Duration(seconds: 5), _onDoneLoading);
  }

  void _onDoneLoading () {
    setState(() => _initialized = true);
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => HowItWorksScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: 300,
        height: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/flutter_fare_logo.jpg'),
            fit: BoxFit.contain,
          ),
        ),
        child: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
          ),
        ),
      ),
    );
  }
}
