import 'package:flutter/material.dart';
import 'package:project/provider/app_provider.dart';
import 'package:provider/provider.dart';
import 'screens/homepage.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => AppProvider()),
  ], child: const MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
