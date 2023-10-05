import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Состояние текстового поля
/// enable
/// enable + focus
/// enable + error
/// enable + error + focus
///
/// disable
///
///
/// 1 Настройка состояния
/// 2 Настройка клавиатуры
/// 3 Настройка курсора
/// 4 Настройка корректировки текста
/// 5 Настройка выделения
/// 6 Настройки текста
///
class TextFieldCustom extends StatelessWidget {
  TextFieldCustom({super.key});

  Widget CustomButton(String value, Function()? onClick) {
    return InkWell(
      onTap: onClick,
      child: Container(
        child: Text(value),
      ),
    );
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomButton("asdasd", () {}),
          TextField(
            // maxLength: 10,

            onChanged: (value) {
              print(value);
            },
            onSubmitted: (value) {
              print(value);
            },
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            // 1
            // enabled: false,
            // readOnly: true,
            // 2
            // textInputAction: TextInputAction.next,
            // keyboardAppearance: Brightness.dark,
            // keyboardType: TextInputType.phone,
            // 3
            // showCursor: true,
            // cursorHeight: 10,
            // cursorWidth: 10,
            // cursorRadius: Radius.circular(5),
            // cursorColor: Colors.red,
            // 4
            // obscureText: true,
            // obscuringCharacter: "*",
            // autocorrect: true,
            // enableSuggestions: true,// подсказки
            // textCapitalization: TextCapitalization.words,
            // 5
            // enableInteractiveSelection: false,
            // 6
            // maxLines: 1,
            // minLines: 1,
            // expands: true,
            // maxLength: 10,
            // maxLengthEnforcement:  MaxLengthEnforcement.truncateAfterCompositionEnds,

            // textAlign: TextAlign.center,
            // textAlignVertical: TextAlignVertical.top,
            // textDirection: TextDirection.ltr,

            decoration: InputDecoration(
              // border: UnderlineInputBorder() нет стилей
              // disabledBorder: UnderlineInputBorder()

              // filled: true,
              // fillColor: Colors.amber,

              // counter: Text("3/10"),
              // counterText: "3/10",
              // counterStyle: TextStyle(),

              contentPadding: EdgeInsets.all(10),
              // floatingLabelBehavior: FloatingLabelBehavior.always,

              // suffix: Text("Текст"),
              suffixIcon: Icon(Icons.abc),
              suffixIconColor: Colors.amber,
              suffixIconConstraints: BoxConstraints(minWidth: 40),
              suffixStyle: TextStyle(),
              suffixText: "Текст",

              prefixIcon: Icon(Icons.email),
              prefixIconConstraints: BoxConstraints(minWidth: 50),
              prefixText: "+7",
              // prefix: Text("+7"),

              hintText: "Текст внутри",
              // hintMaxLines: 2,
              // hintStyle: TextStyle(),
              // hintTextDirection: TextDirection.rtl,

              helperText: "Помощь",
              // helperMaxLines: 2,
              // helperStyle: TextStyle(),

              // label: Text("Что-то интересное"),
              labelText: "Что-то интересное",
              // labelStyle: TextStyle(),

              icon: Icon(Icons.email),

              // errorText: "Ошибка",
              // error: Text("Ошибка"),
              // errorStyle: TextStyle(),
              // errorMaxLines: 2,

              // focusedErrorBorder: OutlineInputBorder(
              //   gapPadding: 10,
              //   borderRadius: BorderRadius.circular(10),
              //   borderSide: BorderSide(
              //     color: Colors.red.shade200,
              //     style: BorderStyle.solid,
              //     width: 3,
              //     strokeAlign: 10,
              //   ),
              // ),
              // errorBorder: OutlineInputBorder(
              //   gapPadding: 10,
              //   borderRadius: BorderRadius.circular(10),
              //   borderSide: const BorderSide(
              //     color: Colors.red,
              //     style: BorderStyle.solid,
              //     width: 3,
              //     strokeAlign: 10,
              //   ),
              // ),
              // focusedBorder: OutlineInputBorder(
              //   gapPadding: 10,
              //   borderRadius: BorderRadius.circular(10),
              //   borderSide: BorderSide(
              //     color: Colors.indigo.shade200,
              //     style: BorderStyle.solid,
              //     width: 3,
              //     strokeAlign: 10,
              //   ),
              // ),
              // enabledBorder: OutlineInputBorder(
              //   gapPadding: 10,
              //   borderRadius: BorderRadius.circular(5),
              //   borderSide: const BorderSide(
              //     color: Colors.indigo,
              //     style: BorderStyle.solid,
              //     width: 3,
              //     strokeAlign: 10,
              //   ),
              // ),
              // disabledBorder: OutlineInputBorder(
              //   gapPadding: 10,
              //   borderRadius: BorderRadius.circular(20),
              //   borderSide: const BorderSide(
              //     color: Colors.amber,
              //     style: BorderStyle.solid,
              //     width: 2,
              //     strokeAlign: 10,
              //   ),
              // ),
              border: const OutlineInputBorder(),
            ),
          ),
          Form(
            child: TextFormField(),
          ),
        ]),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField();
  }
}
