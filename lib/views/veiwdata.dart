import 'package:flutter/material.dart';

import '../models/todomodel.dart';
import '../services/todoservices.dart';

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => DataPageState();
}
class DataPageState extends State<DataPage> {

  List<MakeModel> models=[];
  getModelData()async{
    models=await ModelService().getModelsData();
    setState(() {
    } );}

  void initState(){
    super.initState();
    getModelData();

  }
   String complete(
       bool ? compeleted
       ){if (compeleted== true)
       {
         return "compeleted";
       }
       else{
         return "not completed";}

   }


  @override
  Widget build(BuildContext context) {

    return     Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,title: Center(child: Text('The list & ID',style: TextStyle(color: Colors.white),))),
        body:       ListView.builder(
          itemBuilder: (BuildContext context,int index)
          {
            return ListTile(
              leading: Text(models[index].id.toString()),
              trailing: Icon(Icons.task_alt),
              title:  Text(models[index].title ?? "",style: TextStyle(color: Colors.black,fontSize: 17),),
              subtitle: Text(complete(models[index].completed)),
            );
          }
          ,itemCount:models.length ,
        )
    );
  }
  }
