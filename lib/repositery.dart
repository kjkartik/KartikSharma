import 'package:json/service.dart';

import 'model_class.dart';

class Repositery{
  var jsnData = Service();
  Future<List<Modeljson>> getJsonData(){

    var repJsonData = jsnData.readJson();
    return repJsonData;
    }

}