import 'package:flowltter/ui/navigation/navigation_bar_web.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_bloc.dart';
import 'home_state.dart';

class HomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return Scaffold(
        // appBar: AppBar(
        //   iconTheme: IconThemeData(
        //     color: Colors.white,
        //   ),
        //   backgroundColor: Theme.of(context).primaryColorLight,
        //   elevation: 5,
        //   brightness: Brightness.dark,
        //   centerTitle: true,
        //   textTheme: Theme.of(context).primaryTextTheme,
        //   actions: [],
        //   title: Text(
        //     "Home Page",
        //   ),
        // ),
        body: _buildBody(state),
      );
    });
  }

  _buildBody(HomeState state) {
    return Column(
      children: [
        NavigationBarWeb(),
        Expanded(child: _buildContent(state)),
      ],
    );
  }

  _buildContent(HomeState state) {
    if (state.article == null) {
      return Container(
        color: Colors.black,
      );
    }
    return Container(
      color: Colors.pink,
      child: Text(state.article.title),
    );
  }
}
