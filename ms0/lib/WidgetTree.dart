import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ms0/main2.dart';
import 'package:provider/provider.dart';
import 'login_page.dart';
class WidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    if (user == null) {
      return LoginPage();
    }
    return SecondScreen();
  }
}