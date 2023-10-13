import 'package:example_provider/page_two.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ModelCount with ChangeNotifier {
  int counterOne = 0;
  int counterTwo = 0;

  void incrementCounterOne() {
    counterOne++;
    notifyListeners();
  }

  void incrementCounterTwo() {
    counterTwo++;
    notifyListeners();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () =>
                    context.read<ModelCount>().incrementCounterOne(),
                child: const Text('Первая кнопка')),
            ElevatedButton(
                onPressed: () =>
                    context.read<ModelCount>().incrementCounterTwo(),
                child: const Text('Вторая кнопка')),
            const TextOne(),
            const TextTwo(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final test = context.read<ModelCount>();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Provider.value(
                  value: ModelCountDTO(
                      countOne: test.counterOne, countTwo: test.counterTwo),
                  child: PageTwo(),
                );
              },
            ),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

class TextOne extends StatelessWidget {
  const TextOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<ModelCount>().counterOne}',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class TextTwo extends StatelessWidget {
  const TextTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<ModelCount>().counterTwo}',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class ModelCountDTO {
  final int countOne;
  final int countTwo;

  ModelCountDTO({required this.countOne, required this.countTwo});
}
