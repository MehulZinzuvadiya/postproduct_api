import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:postproduct_api/provider/home_provider.dart';
import 'package:postproduct_api/view/home_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => HomeProvider(),)],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomeScreen(),
      },
    ),
  ));
}