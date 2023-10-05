import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  // ButtonStyle style = ButtonStyle();
  void onClick() {
   count++;
  }

  void onLongClick() {
    print('Долгое нажатие');
  }

  String value = "9 = 4 + 5";

  int count = 0;

  void onClick1() {
    print('test');
  }

  void onPrint() {
    print('hello');
  }

  var style = ButtonStyle();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              
              Text(count.toString()),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.indigo),
                    foregroundColor: MaterialStatePropertyAll(Colors.red),
                    overlayColor: MaterialStatePropertyAll(Colors.green),
                    shadowColor: MaterialStatePropertyAll(Colors.red),
                    elevation: MaterialStatePropertyAll(10),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: Colors.amber,
                            width: 10,
                            style: BorderStyle.none,
                          )),
                    ),
                    alignment: Alignment.bottomCenter,
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 20),
                    ),
                  ),
                  onPressed: onPrint,
                  child: Text("Click")),
              ElevatedButton(
                // clipBehavior: Clip.antiAliasWithSaveLayer,
                style: ButtonStyle(),
                // style: ButtonStyle(
                // backgroundColor: MaterialStatePropertyAll(Colors.amber),
                // foregroundColor: MaterialStatePropertyAll(Colors.red),
                // overlayColor: MaterialStatePropertyAll(Colors.red.shade400),
                // shadowColor: MaterialStatePropertyAll(Colors.red),
                // elevation: MaterialStatePropertyAll(10),
                // minimumSize: MaterialStatePropertyAll(Size(40, 100)),
                // maximumSize: MaterialStatePropertyAll(Size(300, 300)),
                // shape: MaterialStatePropertyAll(
                //   RoundedRectangleBorder(
                //     side: BorderSide(color: Colors.black, width: 1),
                //     borderRadius: BorderRadius.circular(40),
                //   ),
                // ),
                // alignment: Alignment.topCenter,
                // padding:MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20))
                // ),
                onLongPress: onLongClick,
                onPressed: () {
                  count++;
                  setState(() {});
                  print(count);
                },
                child: Text('adsd'),
              ),
              OutlinedButton(
                // style: style,
                onPressed: () {
                  setState(() {});
                  value = "Результатт = 9";
                },
                child: Text('Кнопка 2'),
              ),
              TextButton(
                // style: style,
                onPressed: () {},
                child: Text("Кнопка 3"),
              ),
              IconButton(
                // iconSize: 40,
                // padding: EdgeInsets.zero,
                // alignment: Alignment.topCenter,
                // splashRadius: 100,
                // // color: Colors.amber,
                // splashColor: Colors.red,
                // disabledColor: Colors.indigoAccent,
                // constraints: BoxConstraints(
                //   minHeight: 100,
                //   maxHeight: 30,
                //   maxWidth: 30,
                //   minWidth: 100,
                // ),
                onPressed: null,
                icon: Icon(Icons.abc),
              )
            ],
          ),
        ),
      ),
    );
  }
}
