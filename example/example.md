```dart
import 'package:flutter/material.dart';
import 'package:splash_view/splash_view.dart';

void main() {
  runApp(
    MaterialApp(
      home: SplashView(
        backgroundColor: Colors.red,
        loadingIndicator: RefreshProgressIndicator(),
        logo: FlutterLogo(),
        done: Done(Home()),
      ),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Home Page')),
    );
  }
}
```
