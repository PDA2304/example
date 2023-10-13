import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {},
              child: Text('3'),
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
