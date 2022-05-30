import 'package:flutter/cupertino.dart';

class dataModel{
  String name;
  String img;
  int price;
  int people;
  int stars;
  String description;
  String location;

  dataModel(
    {
    required this.name,
    required this.img,
    required this.price,
    required this.people,
    required this.stars,
    required this.location,
    required this.description
  }
  );

  factory dataModel.fromJson(Map<String,dynamic> json){
      return dataModel(name: json["name"], 
      img: json["img"], 
      price: json["price"],
      people: json["people"],
      stars: json["stars"], 
      location: json["location"],
      description: json["description"]);
  }

}