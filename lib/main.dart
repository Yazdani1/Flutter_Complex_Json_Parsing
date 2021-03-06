import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async{

  List listOf=await getAllData();

  runApp(new MyApp(listOf));
}

class MyApp extends StatelessWidget {

  List listOf;
  MyApp(this.listOf);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Home(listOf),
    );
  }
}





Future<List>getAllData() async{

  var api="https://jsonplaceholder.typicode.com/users";

  var data=await http.get(api);
  var jsonData=json.decode(data.body);

  return jsonData;
}



//void main() async{
//
//  List data=await getComplex();
//
//  //print(data[0]["address"]["geo"]["lat"]);
//  print(data[0]["address"]["city"]);
//
//
////  List m=await getData();
//
////  List<String>listOf=[];
////  int i;
////  for(i=0;i<=m.length;i++){
////    listOf.add(m[i]);
////  }
//
//
//
//  runApp(new MaterialApp(
//    home: new Scaffold(
//      appBar: new AppBar(
//        title: new Text("Compelx Json"),
//        backgroundColor: Colors.orange,
//      ),
//    body: new Container(
//      //child: new Text(data[0]["address"]["geo"]["lat"]),
//
//      child: new ListView.builder(
//          itemCount: data.length,
//        itemBuilder: (BuildContext c,int index){
//            return Card(
//              elevation: 10.0,
//              margin: EdgeInsets.all(7.0),
//              child: new Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//
//                  Padding(
//                    padding: const EdgeInsets.all(6.0),
//                    child: new Text("Name: ${data[index]["name"]}"),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(6.0),
//                    child: new Text("Username: ${data[index]["username"]}"),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(6.0),
//                    child: new Text("City Name: ${data[index]["address"]["city"]}"),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(6.0),
//                    child: new Text("Email: ${data[index]["email"]}"),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(6.0),
//                    child: new Text("Lat: ${data[index]["address"]["geo"]["lat"]}"),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(6.0),
//                    child: new Text("street: ${data[index]["address"]["street"]}"),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(6.0),
//                    child: new Text("suite: ${data[index]["address"]["suite"]}"),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(6.0),
//                    child: new Text("zipcode: ${data[index]["address"]["zipcode"]}"),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(6.0),
//                    child: new Text("lng: ${data[index]["address"]["geo"]["lng"]}"),
//                  ),
//
//                ],
//              ),
//            );
//        }
//      )
//    )
//
////    body: new ListView.builder(
////        itemCount: m.length,
////      itemBuilder: (BuildContext c,int index){
////          return Card(
////            elevation: 10.0,
////            child: new Row(
////              children: <Widget>[
////
////                new Expanded(
////                    flex: 1,
////                  child: new CircleAvatar(
////                    child: new Text(m[index]["id"].toString()[0]),
////                    backgroundColor: Colors.red,
////                    foregroundColor: Colors.white,
////                  ),
////                ),
////                new SizedBox(width: 5.0,),
////                new Expanded(
////                  flex: 3,
////                  child: InkWell(
////                    child: new Text(m[index]["title"],
////                    maxLines: 2,
////                    style: TextStyle(
////                      fontSize: 22.0
////                    ),
////                    ),
////                    onTap: (){
////                      print("Data is ${m[index]["userId"]}");
////                    },
////                  ),
////                ),
////
////
////
////              ],
////            ),
////          );
////      }
////    ),
//
//    ),
//  ));
//}
//
//Future<List>getComplex() async{
//  String api="https://jsonplaceholder.typicode.com/users";
//
//  var data=await http.get(api);
//  var jsonData=json.decode(data.body);
//
//  return jsonData;
//
//}
//


//Future<List> getData() async{
//
//  String url = "https://jsonplaceholder.typicode.com/posts";
//
//  var data=await http.get(url);
//  var jsonData=json.decode(data.body);
//
//  return jsonData;
//
////  http.Response response=await http.get(url);
////  return response.body;
//
//
//}
