import 'package:flutter/material.dart';
import 'package:ostarbeiters/models/app_state.dart';
import 'package:ostarbeiters/models/languages.dart';
import 'package:provider/provider.dart';
import 'pages/menu_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(Languages.ru),
      builder: (context, widget) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            textTheme: TextTheme(
              bodyText1: TextStyle(
                fontSize: 16
              ),
            ),
            // textButtonTheme: TextButtonThemeData(
            //   style: TextButton.styleFrom(
            //     primary: Colors.black,
            //     textStyle:  TextStyle(
            //       fontSize: 20
            //     ),
            //   )
            // )
          ),
          home: MenuPage(),
        );
      }
    );
  }
}