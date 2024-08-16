// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:servicemen_listing/features/service_men/domain/model/service_men_model.dart';

// class CategoryModelModel {
//   final String icon;
//   final String title;
//   final Color color;
//   CategoryModelModel({
//     required this.icon,
//     required this.title,
//     required this.color,
//   });
// }

class CategoryModel {
  int id;
  List<Service> services;
  String name;
  String image;
  DateTime created;
  bool topRated;

  CategoryModel({
    required this.id,
    required this.services,
    required this.name,
    required this.image,
    required this.created,
    required this.topRated,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      services:
          List<Service>.from(json['services'].map((x) => Service.fromJson(x))),
      name: json['name'],
      image: json['image'],
      created: DateTime.parse(json['created']),
      topRated: json['top_rated'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'services': List<dynamic>.from(services.map((x) => x.toJson())),
      'name': name,
      'image': image,
      'created': created.toIso8601String(),
      'top_rated': topRated,
    };
  }
}
