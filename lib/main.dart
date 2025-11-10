import 'package:flutter/material.dart';
import 'package:local_provider/providers/backeetball_provider.dart';
import 'package:local_provider/screens/basketball.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => BasketBallProvider(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: BasketBall()),
    );
  }
}
