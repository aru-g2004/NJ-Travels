import 'package:cloud_firestore/cloud_firestore.dart';


class Location{

  final String name;
  final String pic;


  Location({
    required this.name,
    required this.pic,
  });

  Map<String, dynamic> toJson()=>
      {
        'name': name,
        'pic': pic,
      };

  static Location fromJson(Map<String, dynamic> json)=>
      Location(name: json['name'], pic: json['pic']);



}