import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  Future<String> getData() async{

    String url = "https://jsonplaceholder.typicode.com/posts";

    var data=await http.get(url);
    var jsondata=json.decode(data.body);
    return jsondata;
  }

  @override
  void initState() {
    var m=getData();
    print(m);
    super.initState();
  }

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

    );
  }
}

