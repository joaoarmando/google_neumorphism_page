import 'package:flutter/material.dart';
import 'package:google_neumorphism/styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Neumorphism',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _buildLogo(),
          Center(
            child:_buildSearchContainer()
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildButton("Google Search"),
              SizedBox(width: 20),
              _buildButton("I'm Feeling Lucky"),
            ],
          )
        ],
      ),
      
    );
  }

  Widget _buildSearchContainer(){
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * .4,
        height: 60,
        decoration: decoration,
        child: Row(
          children: <Widget>[
            _buildIcon(Icons.search),
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: "Search",
                ), 
              ),
            ),
            _buildIcon(Icons.mic),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo(){
    return Image.asset("assets/logo.png", width: MediaQuery.of(context).size.width * .25);
  }
  
  Widget _buildIcon(IconData icon){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }

  Widget _buildButton(String text){
    return Container(
      padding: EdgeInsets.symmetric(horizontal:24, vertical: 12),
      decoration: decoration,
      child: Text(text,
        style: TextStyle(
          color: iconColor,
          fontSize: 18
        ),
      ),
    );
  }
  
}
