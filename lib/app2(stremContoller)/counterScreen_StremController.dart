import 'package:flutter/material.dart';

import 'counter_block.dart';
import 'counter_event.dart';

class counterScreen_StreamController extends StatelessWidget {
  final _bloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    print("Building");
    return Scaffold(
      appBar: AppBar(
        title: Text("using stream controller"),
      ),
      body: Center(
        child: StreamBuilder(
          stream: _bloc.counter,
          initialData: 0,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${snapshot.data}',
                  style: Theme.of(context).textTheme.display1,
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => _bloc.counterEventSink.add(IncrementEvent()),
            heroTag: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () => _bloc.counterEventSink.add(DecrementEvent()),
            heroTag: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _bloc.dispose();
  // }
}