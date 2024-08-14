import 'package:servicemen_listing/core/utils/app_assetes/app_images.dart';
import 'package:servicemen_listing/features/service_men/domain/model/service_men_model.dart';

List<ServiceMenModel> serviceMenList = [
  ServiceMenModel(
      image: AppImages.userOne,
      name: 'John Doe',
      rating: 4.5,
      ratingUsersCount: 123),
  ServiceMenModel(
      image: AppImages.userTwo,
      name: 'Vinay K',
      rating: 4.2,
      ratingUsersCount: 58),
  ServiceMenModel(
      image: AppImages.userThree,
      name: 'Alice S',
      rating: 4.8,
      ratingUsersCount: 60),
  ServiceMenModel(
      image: AppImages.userFour,
      name: 'Zenovia R',
      rating: 4.5,
      ratingUsersCount: 81),
  ServiceMenModel(
      image: AppImages.userFive,
      name: 'Vaishak L',
      rating: 4.2,
      ratingUsersCount: 21),
];
