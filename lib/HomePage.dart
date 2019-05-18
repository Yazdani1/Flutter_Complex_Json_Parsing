import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Data.dart';

class Home extends StatefulWidget {





  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home>  {

  @override
  void initState() {
    setState(() {
      List mdata;
      Future<List>getComplex() async{
      String api="https://jsonplaceholder.typicode.com/users";

      var data=await http.get(api);
      var jsonData=json.decode(data.body);
      mdata=jsonData;

      print(mdata);

      return jsonData;

}

    });
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

