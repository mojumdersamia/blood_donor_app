import 'package:flutter/material.dart';

import 'home_page/home_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Blood Donor',
     theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)
     ),
     home: const Homepage(),
   );
  }

}

