import 'package:flutter/material.dart';

class LoadoutsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Loadouts'),
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
                'Loadouts Page',
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
