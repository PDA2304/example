import 'package:example/screen/page_%20three.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => PageThree()));
                    // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => PageThree()), (route) => false);
              },
              child: Text(name),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("назад"))
          ],
        ),
      ),
    );
  }
}
