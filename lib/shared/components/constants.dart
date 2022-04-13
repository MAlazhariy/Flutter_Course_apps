import 'package:firstapp/modules/shop_app/login/login_screen.dart';
import 'package:firstapp/shared/network/local/cache_helper.dart';
import 'package:flutter/material.dart';

List<Map> newTasks = [];
List<Map> doneTasks = [];
List<Map> archiveTasks = [];

Color greyColor = const Color(0x7C323F48);
Color redColor = const Color(0x7CFF0028);

/// shop app
void signOut(BuildContext context){
  CacheHelper.removeToken();
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) {
      return ShopAppLoginScreen();
    }),
        (route) => false,
  );
}