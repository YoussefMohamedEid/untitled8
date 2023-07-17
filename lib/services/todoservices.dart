import 'dart:convert';
import 'package:dio/dio.dart';
import '../models/todomodel.dart';



class ModelService
{
  String url="https://jsonplaceholder.typicode.com/todos";
  Future<List<MakeModel>>getModelsData()async{
    List<MakeModel> model=[];
    final dio=Dio();
    final response = await dio.get(url);

    var data =response.data;
    data.forEach ((jsonElement)
    {
      MakeModel modelNum=MakeModel.fromJson(jsonElement);
      model.add(modelNum);
    });
    return model;

  }

}