import 'package:flutter/material.dart';

class OperatorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Operators'),
        backgroundColor: Color.fromARGB(255, 42, 43, 55),
      ),
      body: Center(
          child: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Operators Page',
                textScaleFactor: 2,
                style: TextStyle(color: Colors.white),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
              ),
            ],
          ),
        ),
      )),
    ));
  }
}
