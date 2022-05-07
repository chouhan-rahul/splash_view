```dart
import 'package:flutter/material.dart';
import 'package:splash_view/splash_view.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(
        image: FlutterLogo(),
        title: "Dart Splash View",
        home: Home(),
      ),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
```