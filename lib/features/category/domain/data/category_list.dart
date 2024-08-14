import 'package:flutter/material.dart';
import 'package:servicemen_listing/core/utils/app_assetes/app_icons.dart';
import 'package:servicemen_listing/features/category/domain/model/category_model.dart';

List<CategoryModel> categoryList = [
  CategoryModel(
      icon: AppIcons.cleaning,
      title: "Cleaning",
      color: const Color(0xff3261D9).withOpacity(.08)),
  CategoryModel(
      icon: AppIcons.construction,
      title: "Construction",
      color: const Color(0xffFF6E1E).withOpacity(.08)),
  CategoryModel(
      icon: AppIcons.painting,
      title: "Painting",
      color: const Color(0xffC232D9).withOpacity(.08)),
  CategoryModel(
      icon: AppIcons.gardening,
      title: "Gardening",
      color: const Color(0xff29D697).withOpacity(.08)),
  CategoryModel(
      icon: AppIcons.repair,
      title: "Repair",
      color: const Color(0xffEAB612).withOpacity(.08)),
  CategoryModel(
      icon: AppIcons.washing,
      title: "Washing",
      color: const Color(0xff4686E7).withOpacity(.08)),
];
