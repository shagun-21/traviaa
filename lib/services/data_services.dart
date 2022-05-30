import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:traviaa/model/data_model.dart';

class DataServices{
    String baseURL = "http://mark.bslmeiyu.com/api";
     Future<List<dataModel>> getInfo() async {
      var apiUrl ='/getplaces';
     http.Response res= await http.get(Uri.parse(baseURL+apiUrl));
     try{
          if(res.statusCode==200){
            
              List<dynamic> list=  json.decode(res.body);
              print(list);
              return list.map((e) => dataModel.fromJson(e)).toList();
          }
          else{
            return <dataModel>[];
          }
     }catch(e){
          print(e);
          return <dataModel>[];
     }
    }
}
