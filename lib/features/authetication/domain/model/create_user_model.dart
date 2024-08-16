import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CreateUserModel {
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  CreateUserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'phone_number': phoneNumber,
    };
  }
}

class CreateUserResponseModel {
  final int? userId;
  final String? token;
  final String? message;
  CreateUserResponseModel({
    this.userId,
    this.token,
    this.message,
  });

  factory CreateUserResponseModel.fromMap(Map<String, dynamic> map) {
    return CreateUserResponseModel(
      userId: map['user_id'] != null ? map['user_id'] as int : null,
      token: map['token']['access'] != null
          ? map['token']['access'] as String
          : null,
      message: map['message'] != null ? map['message'] as String : null,
    );
  }
}
