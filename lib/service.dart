import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:json/model_class.dart';

class Service{
 Future<List<Modeljson>> readJson()async{
    // try{

  final String _base = await rootBundle.
  loadString("json/1.json");
  final data = await json.decode(_base);
  return data;
    // }catch(e){
    //
    // print(e);
    // print("service error");
    // };

  }
}