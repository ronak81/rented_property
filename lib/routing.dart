import 'package:find_home/screens/auth/login.dart';
import 'package:find_home/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routing {
  static Route<dynamic> onPageRouting(RouteSettings setting) {
    switch (setting.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => Login());
      case "/home":
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case "/add_hoome":
        return MaterialPageRoute(builder: (_) => HomeScreen());

      default:
        return onErrorRoute();
    }
  }

  static Route<dynamic> onErrorRoute() {
    return MaterialPageRoute(builder: ((context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error routing"),
        ),
        body: Center(
          child: Text("Routing error"),
        ),
      );
    }));
  }
}
