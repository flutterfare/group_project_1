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
          centerTitle: true,
          title: Text('How it works'),
          actions: <Widget>[
            PopupMenuButton(
              onSelected: (value) {},
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    value: 'A',
                    child: Text('Soon'),
                    ),
                ];
              },
              ),
          ],
          ),

        drawer: Text(
          'Soon',
          style: TextStyle(
            fontSize: 80,
            fontWeight: FontWeight.bold,
            ),
          ),

        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Placeholder(
                      color: Colors.red,
                      ),
                    ),
                  Container(
                    width: 200,
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nec cursus tortor, sit amet rhoncus sapien. Mauris sit amet nulla sed turpis varius condimentum vitae quis enim.'),
                    ),
                ],
                ),
              SizedBox(
                height: 20,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 200,
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nec cursus tortor, sit amet rhoncus sapien. Mauris sit amet nulla sed turpis varius condimentum vitae quis enim.'),
                    ),
                  Container(
                    width: 150,
                    height: 150,
                    child: Placeholder(
                      color: Colors.yellow,
                      ),
                    ),
                ],
                ),
              SizedBox(
                height: 20,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Placeholder(
                      color: Colors.green,
                      ),
                    ),
                  Container(
                    width: 200,
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nec cursus tortor, sit amet rhoncus sapien. Mauris sit amet nulla sed turpis varius condimentum vitae quis enim.'),
                    ),
                ],
                ),
            ],
            ),
          ),
        floatingActionButton: FloatingActionButton(
          onPressed: _exit,
          tooltip: 'Exit',
          child: Icon(Icons.exit_to_app),
          ));
  }
}
