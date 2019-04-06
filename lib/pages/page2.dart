import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_global_variable/scoped_models/main.dart';
import 'package:flutter_global_variable/pages/page3.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text("Page 2"),
          backgroundColor: Colors.transparent,
          elevation: 0.0),
      body: ScopedModelDescendant<MainModel>(
          builder: (BuildContext context, Widget child, MainModel model) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Your counter value is: ${model.count}',
                style: TextStyle(fontSize: 18.0),
              ),
              RaisedButton(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Confirm'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<Page3>(
                          builder: (BuildContext context) => Page3()),
                    );
                  })
            ],
          ),
        );
      }),
    );
  }
}
