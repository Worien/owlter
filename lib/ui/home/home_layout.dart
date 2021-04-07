import 'package:flowltter/ui/home/widgets/home_header_widget.dart';
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
        body: _buildBody(state),
      );
    });
  }

  _buildBody(HomeState state) {
    return Column(
      children: [
        NavigationBarWeb(),
        HomeHeaderWidget(),
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
