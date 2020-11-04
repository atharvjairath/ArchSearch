import 'package:flutter/material.dart';
import 'shoplogin_signup.dart';
import 'package:provider/provider.dart';
import 'user.dart';
import 'package:ArchSearch/store_info_shop.dart';

class Wrapper2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    if (user == null) {
      return login_signup();
    } else {
      return StoreInfo();
    }
  }
}
