import 'package:flowltter/repository/firebase_datasource.dart';
import 'package:flowltter/ui/home/home_bloc.dart';
import 'package:flowltter/ui/home/home_event.dart';
import 'package:flowltter/ui/home/home_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return HomeBloc(
          firebaseDatasource: FirebaseDatasourceImpl()
        )..add(HomePageLoaded("First Event"));
      },
      child: HomeLayout(),
    );
  }
}
