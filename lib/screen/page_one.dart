import 'package:example/screen/page_two.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => PageTwo(name : "alskdjlasjdlkajsdlasd")));
            Navigator.pushNamed(context, '2',arguments: "dasdasds");
          },
          child: Text('1'),
        ),
      ),
    );
  }
}
