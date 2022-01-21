


import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget{

  @override
  _CategoryState createState() => _CategoryState();

}


class _CategoryState extends State<Category>{


  final _formKey = GlobalKey<FormState>();
  var catController = TextEditingController();


  @override
  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text("Create Category", style: TextStyle(fontSize: 25.0),),
          TextFormField(
            controller: catController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Category Name'
            ),
            validator: (value){
              if(value == null || value.isEmpty){
                return"Please enter Category name";
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: (){
                if(_formKey.currentState!.validate()){
                  String catName = catController.value.toString();
                  log(catName);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Prossing Data')),
                  );
                }
              },
              child: Text("Save"),
            ),
          )
        ],
      )
    );
  }
}