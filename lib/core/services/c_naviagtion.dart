import 'package:flutter/material.dart';

//CUSTOM NAVIGATION SERVIECE
class CNaviagtion {
  //PUSH METHOD
  static void push(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  //PUSH REPLACEMENT METHOD
  static void pushReplacement(BuildContext context, Widget page) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => page));
  }

  //PUSH AND REMOVE ALL PREVIOUS SCREENS
  static void pushAndRemoveUntil(BuildContext context, Widget page) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => page), (route) => false);
  }
}
