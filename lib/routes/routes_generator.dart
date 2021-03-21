import 'package:flowltter/routes/routes.dart';
import 'package:flowltter/ui/home/home_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      // case routeAbout:
      //   return MaterialPageRoute(builder: (_) => AboutPage());
      //   break;
      // case routeContacts:
      //   return MaterialPageRoute(builder: (_) => ContactPage());
      //   break;
    }
  }
}