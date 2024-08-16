import 'package:alert_banner/exports.dart';
import 'package:flutter/material.dart';

class CToast {
  //SUCCESS TOAST
  static void success(BuildContext context, {required String message}) {
    showAlertBanner(
        context,
        () {},
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: const EdgeInsets.symmetric(vertical: 24),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
        alertBannerLocation: AlertBannerLocation.bottom);
  }

  //ERROR TOAST
  static void error(BuildContext context,
      {required String message,
      AlertBannerLocation location = AlertBannerLocation.bottom}) {
    showAlertBanner(
        context,
        () {},
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: const EdgeInsets.symmetric(vertical: 24),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
        alertBannerLocation: location);
  }

  //INFO TOAST
  static void info(BuildContext context,
      {required String message,
      AlertBannerLocation location = AlertBannerLocation.bottom}) {
    showAlertBanner(
        context,
        () {},
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: const EdgeInsets.symmetric(vertical: 24),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
        alertBannerLocation: location);
  }
}
