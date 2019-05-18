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
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[


                  new Text(widget.listOf[index]["name"]),
                  new SizedBox(height: 8.0,),
                  new Text(widget.listOf[index]["username"]),
                  new SizedBox(height: 8.0,),
                  new Text(widget.listOf[index]["email"]),
                  new SizedBox(height: 8.0,),
                  new Text(widget.listOf[index]["address"]["zipcode"]),
                  new SizedBox(height: 8.0,),
                  new Text(widget.listOf[index]["address"]["city"]),
                  new SizedBox(height: 8.0,),
                  new Text(widget.listOf[index]["address"]["suite"]),
                  new SizedBox(height: 8.0,),
                  new Text(widget.listOf[index]["address"]["street"]),
                  new SizedBox(height: 8.0,),
                  new Text(widget.listOf[index]["address"]["geo"]["lat"]),
                  new SizedBox(height: 8.0,),
                  new Text(widget.listOf[index]["address"]["geo"]["lng"]),
                  new SizedBox(height: 8.0,),

                ],
              ),
            ),
          );
        }
    )
    );
  }
}

