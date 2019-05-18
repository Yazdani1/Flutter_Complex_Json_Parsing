import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async{

  List m=await getData();

//  List<String>listOf=[];
//  int i;
//  for(i=0;i<=m.length;i++){
//    listOf.add(m[i]);
//  }



  runApp(new MaterialApp(
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text("Compelx Json"),
        backgroundColor: Colors.orange,
      ),

    body: new ListView.builder(
        itemCount: m.length,
      itemBuilder: (BuildContext c,int index){
          return Card(
            elevation: 10.0,
            child: new Row(
              children: <Widget>[

                new Expanded(
                    flex: 1,
                  child: new CircleAvatar(
                    child: new Text(m[index]["id"].toString()[0]),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                ),
                new SizedBox(width: 5.0,),
                new Expanded(
                  flex: 3,
                  child: InkWell(
                    child: new Text(m[index]["title"],
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 22.0
                    ),
                    ),
                    onTap: (){
                      print("Data is ${m[index]["userId"]}");
                    },
                  ),
                ),
                


              ],
            ),
          );
      }
    ),

    ),
  ));
}
Future<List> getData() async{

  String url = "https://jsonplaceholder.typicode.com/posts";

  var data=await http.get(url);
  var jsonData=json.decode(data.body);

  return jsonData;

//  http.Response response=await http.get(url);
//  return response.body;


}
