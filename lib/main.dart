import 'package:flutter/material.dart';
import 'package:handling_responsive_screen/mobile.dart';
import 'package:handling_responsive_screen/web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.lightBlue[800],
      ),
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {

          //responsive screen
          //constraints.maxWidth.toInt() <= 560  <=>  MediaQuery.of(context).size.width;
          if (constraints.maxWidth.toInt() <= 560) {
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(
                    textScaleFactor:
                        1), // for change text size in minimize screen
                child: const MobileScreen());
          } else {
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(
                    textScaleFactor:
                        1.0), // for change text size in minimize screen
                child: const Webscreen());
          }
        },
      ),
    );
  }
}
