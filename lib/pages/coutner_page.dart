import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter and Mobx'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter',
              style: TextStyle(fontSize: 30.0),
            ),
            Text(
              '0',
              style: TextStyle(fontSize: 42.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text('Add')),
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.remove),
                    label: Text('MInus')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
