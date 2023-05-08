import 'package:flutter/material.dart';
import 'package:out_caster2/provider/Playstore_provider.dart';
import 'package:out_caster2/view/editor_screen.dart';
import 'package:out_caster2/view/for_you.dart';
import 'package:out_caster2/view/home_scree.dart';
import 'package:out_caster2/view/top_charts.dart';
import 'package:out_caster2/view/view_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => Playprovider(),
      )
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home_screen(),
        'foryou':(context) =>For_you(),
        'editor':(context) => Editor_screen(),
        'topchat':(context) => Topchat(),
        'final':(context) => View(),

      },
    ),
  ));
}
