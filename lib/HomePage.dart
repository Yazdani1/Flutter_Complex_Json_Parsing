import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Data.dart';

class Home extends StatefulWidget {

  List listOf;

  Home(this.listOf);

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home>  {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Comples Json Parsing"),
        backgroundColor: Colors.purple,
        actions: <Widget>[

          new IconButton(
              icon: new Icon(Icons.search,color: Colors.white,),
              onPressed: ()=>debugPrint("Search")
          ),
          new IconButton(
              icon: new Icon(Icons.title,color: Colors.white,),
              onPressed: ()=>debugPrint("title")
          )
        ],
      ),

      body: ListView.builder(
    itemCount: widget.listOf.length,
        itemBuilder: (BuildContext c,int index){
          return Card(
            elevation: 10.0,
            margin: EdgeInsets.all(8.0),
            child: new Column(
              children: <Widget>[

                new Text(widget.listOf[index]["email"])

              ],
            ),
          );
        }
    )
    );
  }
}

