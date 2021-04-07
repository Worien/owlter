import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flowltter/routes/routes.dart';
import 'package:flowltter/routes/routes_generator.dart';
import 'package:flowltter/ui/home/home_page.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  ThemeData theme(BuildContext context) {
    return ThemeData(
      primaryColor: Color(0xFF55C5F8),
      accentColor: Color(0xFF015596),
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 16,
        ),
        subtitle1: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 40,
            fontWeight: FontWeight.bold),
        subtitle2: TextStyle(
          color: Theme.of(context).accentColor,
          fontSize: 20,
        ),
        button: TextStyle(color: Colors.white, fontSize: 16)
      ),
      primarySwatch: Colors.blue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: routeHome,
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: theme(context),
      // home: HomePage(),
    );
  }
}
