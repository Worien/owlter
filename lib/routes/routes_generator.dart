import 'dart:io';

import 'package:flowltter/routes/routes.dart';
import 'package:flowltter/routes/web_route.dart';
import 'package:flowltter/ui/contact/contact_page.dart';
import 'package:flowltter/ui/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return createPlatformRoute(builder: (_) => HomePage());
        break;
      // case routeAbout:
      //   return MaterialPageRoute(builder: (_) => AboutPage());
      //   break;
      case routeContacts:
        return createPlatformRoute(builder: (_) => ContactPage());
        break;
    }
  }

  static PageRoute createPlatformRoute({WidgetBuilder builder}){
    if (isWeb()){
      return WebRoute(builder: builder);
    }
    if (Platform.isIOS) {
      return CupertinoPageRoute(builder: builder);
    }
    if (Platform.isAndroid) {
      return MaterialPageRoute(builder: builder);
    }

  }

  static bool isWeb(){
    bool isWeb;
    try{
      if(Platform.isAndroid||Platform.isIOS) {
        isWeb=false;
      } else {
        isWeb=true;
      }
    } catch(e){
      isWeb=true;
    }
    return isWeb;
  }
}

