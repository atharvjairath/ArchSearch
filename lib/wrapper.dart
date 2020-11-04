import 'package:flutter/material.dart';
import 'custlogin_signup.dart';
import 'package:provider/provider.dart';
import 'user.dart';
import 'home_page.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    if (user == null) {
      return customls();
    } else {
      return DesignCourseHomeScreen();
    }
  }
}
