import 'package:flowltter/routes/routes.dart';
import 'package:flowltter/ui/navigation/navigation_item.dart';
import 'package:flutter/material.dart';

class NavigationBarWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          NavigationItem(title: 'Home', routeName: routeHome,),
          NavigationItem(title: 'About', routeName: routeAbout,),
          NavigationItem(title: 'Contact', routeName: routeContacts,),
        ],
      ),
    );
  }
}