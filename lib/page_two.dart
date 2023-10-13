import 'package:example_provider/example.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          children: [
            Text('${context.read<ModelCountDTO>().countOne}'),
            Text('${context.read<ModelCountDTO>().countTwo}'),
          ],
        ),
      ),
    );
  }
}
