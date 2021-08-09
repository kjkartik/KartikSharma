
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

class UiJson extends StatefulWidget {
  const UiJson({Key? key}) : super(key: key);

  @override
  _UiJsonState createState() => _UiJsonState();
}

class _UiJsonState extends State<UiJson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UsingJson'),),
      body: Center(
        child: FutureBuilder(builder: (context,snapshot){
          var jsonData = json.decode(snapshot.data.toString());
          return ListView.builder(itemBuilder: (BuildContext context, int index){
            return Card(
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(jsonData[0]['productName']),
                        ],
                      ),
                      Row(
                        children: [
                          Text(jsonData[1]['productName']),
                        ],
                      ),
                      Row(children: [Text(jsonData[2]['productName']),],),
                      Row(children: [Text(jsonData[3]['productName']),],),
                    ],
                  ),
                ),
                // subtitle: Text(jsonData[index]["productName"]),isThreeLine: true,
              ),
            );
          },itemCount: jsonData.length,);
        },
         future: DefaultAssetBundle.of(context).loadString("json/1.json")
        ),
      ),
    );
  }

}
