import 'package:example/screen/page_%20three.dart';
import 'package:example/screen/page_one.dart';
import 'package:example/screen/page_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Button(),
      // routes: {
      //   "2": (_) {
      //     return PageTwo(
      //       name: "dasdasd",
      //     );
      //   },
      // },

      onGenerateRoute: (settings) {
        return switch (settings.name) {
          '1' => MaterialPageRoute(builder: (context) => PageOne()),
          '2' => MaterialPageRoute(
              builder: (context) {
                final test = (settings.arguments as String);
                return PageTwo(name: test);
              },
            ),
          '3' => MaterialPageRoute(builder: (context) => PageThree()),
          _ => MaterialPageRoute(builder: (_) => Placeholder())
        };
      },
      home: PageOne(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Container(
            width: 150,
            height: 150,
            color: Colors.amber,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.indigo,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
          ),
          Icon(Icons.phone),
          CardTest(
            color: Colors.amber,
          ),
          CardTest(
            color: Colors.black,
          ),
          CardTest(
            color: Colors.indigo,
          ),
          CardTest(
            color: Colors.red,
          ),
          CardTest(
            color: Colors.green,
          )
        ],
      )),
    );
  }
}

class CardTest extends StatelessWidget {
  CardTest({super.key, required this.color});

  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
