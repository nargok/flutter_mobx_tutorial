import 'package:mobxtutorial/store/counter/counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CounterPage extends StatelessWidget {
  final Counter counter = Counter();

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
            Observer(
              builder: (_) => Text(
                '${counter.count}',
                style: TextStyle(fontSize: 42.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton.icon(
                    onPressed: counter.increment,
                    icon: Icon(Icons.add),
                    label: Text('Add')),
                FlatButton.icon(
                    onPressed: counter.decrement,
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
