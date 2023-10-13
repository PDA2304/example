import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterOne = 0;
  int _counterTwo = 0;

  void _incrementCounterOne() {
    setState(() {
      _counterOne++;
    });
  }

  void _incrementCounterTwo() {
    setState(() {
      _counterTwo++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: _incrementCounterOne,
                child: const Text('Первая кнопка')),
            ElevatedButton(
                onPressed: _incrementCounterTwo,
                child: const Text('Вторая кнопка')),
            TextOne(counter: _counterOne),
            TextTwo(counter: _counterTwo),
          ],
        ),
      ),
    );
  }
}

class TextOne extends StatelessWidget {
  TextOne({super.key, required this.counter});
  int counter;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$counter',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class TextTwo extends StatelessWidget {
  TextTwo({super.key, required this.counter});
  int counter;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$counter',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
