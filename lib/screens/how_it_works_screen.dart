import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HowItWorksScreen extends StatelessWidget {
  Future<void> _exit() async {
    await SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('How it works'),
        ),
        body: Center(
          child: Center(
            child: Text(
              'How it works described here',
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _exit,
          tooltip: 'Exit',
          child: Icon(Icons.exit_to_app),
        ));
  }
}
