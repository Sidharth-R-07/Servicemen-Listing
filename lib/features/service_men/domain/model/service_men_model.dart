// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive_flutter/adapters.dart';
part 'service_men_model.g.dart';

class ServiceMenModel {
  final String name;
  final String image;
  final num rating;
  final int ratingUsersCount;
  ServiceMenModel({
    required this.name,
    required this.image,
    required this.rating,
    required this.ratingUsersCount,
  });
}

class Service {
  int id;
  List<ServicePeople> servicePeople;
  String name;
  String image;
  DateTime created;
  bool topRated;
  int category;

  Service({
    required this.id,
    required this.servicePeople,
    required this.name,
    required this.image,
    required this.created,
    required this.topRated,
    required this.category,
  });

  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
      id: json['id'],
      servicePeople: List<ServicePeople>.from(
          json['service_people'].map((x) => ServicePeople.fromJson(x))),
      name: json['name'],
      image: json['image'],
      created: DateTime.parse(json['created']),
      topRated: json['top_rated'],
      category: json['category'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'service_people':
          List<dynamic>.from(servicePeople.map((x) => x.toJson())),
      'name': name,
      'image': image,
      'created': created.toIso8601String(),
      'top_rated': topRated,
      'category': category,
    };
  }
}

@HiveType(typeId: 0)
class ServicePeople extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  double avgRating;

  @HiveField(2)
  int reviewCount;

  @HiveField(3)
  String name;

  @HiveField(4)
  String profilePicture;

  @HiveField(5)
  DateTime created;

  @HiveField(6)
  int service;
  ServicePeople({
    required this.id,
    required this.avgRating,
    required this.reviewCount,
    required this.name,
    required this.profilePicture,
    required this.created,
    required this.service,
  });

  factory ServicePeople.fromJson(Map<String, dynamic> json) {
    return ServicePeople(
      id: json['id'],
      avgRating: json['avg_rating'].toDouble(),
      reviewCount: json['review_count'],
      name: json['name'],
      profilePicture: json['profile_picture'],
      created: DateTime.parse(json['created']),
      service: json['service'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'avg_rating': avgRating,
      'review_count': reviewCount,
      'name': name,
      'profile_picture': profilePicture,
      'created': created.toIso8601String(),
      'service': service,
    };
  }
}
