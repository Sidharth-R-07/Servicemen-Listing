import 'package:flutter/material.dart';
import 'package:servicemen_listing/core/utils/app_assetes/app_icons.dart';
import 'package:servicemen_listing/features/top_services/domain/model/top_service_model.dart';

List<TopServiceModel> topServiceList = [
  TopServiceModel(
    icon: AppIcons.lapTopService,
    title: "Laptop Service",
    color: const Color(0xFF3BB4BD).withOpacity(.07),
  ),
  TopServiceModel(
    icon: AppIcons.houseCleaning,
    title: "House Cleaning",
    color: const Color(0xFF264BCD).withOpacity(.07),
  ),
  TopServiceModel(
    icon: AppIcons.acService,
    title: "AC Service",
    color: const Color(0xFFEB8227).withOpacity(.07),
  ),
  TopServiceModel(
    icon: AppIcons.carWash,
    title: "Car Wash",
    color: const Color(0xFF560CB4).withOpacity(.07),
  ),
  TopServiceModel(
    icon: AppIcons.paintingService,
    title: "Painting",
    color: const Color(0xFF3F79D1).withOpacity(.07),
  ),
];
