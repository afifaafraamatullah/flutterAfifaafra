import 'packge:flutter/material.dart';

import 'package:myapp/marvel/home_screen.dart';
import 'package:myapp/marvel/aboutgalaksi_screen.dart';
import 'package:myapp/marvel/marvel_screen.dart';
import 'package:myapp/marvel/detail_marvel_screen.dart';

  void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        '/aboutmarvel': (context) => AboutScreen(),
        '/homegalaksi': (context)=> HomeScreen(),
        '/marvel': (context)=> MarvelScreen(),
        '/profile': (context)=> ProfileScreen (),

      },
      initialRoute: '/homegalaksi',
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}