import 'package:flutter/material.dart';

import 'CounterBlock.dart';


class counterScreen_Rxdart extends StatefulWidget {

  @override
  _counterScreen_RxdartState createState() => new _counterScreen_RxdartState();
}

class _counterScreen_RxdartState extends State<counterScreen_Rxdart> {

  CounterBlock _counterBloc = new CounterBlock(initialCount: 0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Text("using Rxdart"),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('You have pushed the button this many times:'),
              new StreamBuilder(stream: _counterBloc.counterObservable, builder: (context, AsyncSnapshot<int> snapshot){
                return new Text('${snapshot.data}', style: Theme.of(context).textTheme.display1);
              })
            ],
          ),
        ),
        floatingActionButton: new Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          new FloatingActionButton(
            onPressed: _counterBloc.increment,
            heroTag: 'Increment',
            child: new Icon(Icons.add),
          ),
          SizedBox(width: 10),
          new FloatingActionButton(
            onPressed: _counterBloc.decrement,
            heroTag: 'Decrement',
            child: new Icon(Icons.remove),
          ),
        ])
    );
  }

  @override
  void dispose() {
    _counterBloc.dispose();
    super.dispose();
  }

}