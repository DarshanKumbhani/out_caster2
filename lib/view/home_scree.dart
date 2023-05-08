import 'package:flutter/material.dart';
import 'package:out_caster2/view/editor_screen.dart';
import 'package:out_caster2/view/for_you.dart';
import 'package:out_caster2/view/new.dart';
import 'package:out_caster2/view/top_charts.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  _Home_screenState createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title:  Container(
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.white, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.white, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  label: Text("Seach",
                      style: TextStyle(color: Colors.white)),
                  prefixIcon: Icon(Icons.menu,color: Colors.white,),
                  suffixIcon: Icon(Icons.mic,color: Colors.white,),

                ),
              ),
            ),
            bottom: TabBar(
              labelStyle: TextStyle(color: Colors.black),
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: "For you"),
                Tab(text: "Top charts",),
                Tab(text: "Categories",),
                Tab(text: "Editor's Chat",)
              ],
            ),
          ),
          body: TabBarView(
            children: [
              For_you(),
              Topchat(),
              Catagories(),
              Editor_screen(),
            ],
          )
        ),
      ),
    );
  }
}
