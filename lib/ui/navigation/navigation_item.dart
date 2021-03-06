import 'package:flowltter/routes/routes.dart';
import 'package:flowltter/ui/navigation/interactive_nav_item.dart';
import 'package:flutter/material.dart';

class NavigationItem extends StatelessWidget {

  final String title;
  final String routeName;

  const NavigationItem({@required this.title, @required this.routeName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        navKey.currentState.pushNamed(routeName);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: InteractiveNavItem(
          child: Text(title, style: Theme.of(context).textTheme.headline1,)
          ,
        ),
      ),
    );
  }
}