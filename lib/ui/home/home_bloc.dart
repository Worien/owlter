

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flowltter/repository/firebase_datasource.dart';
import 'package:flowltter/ui/home/home_event.dart';
import 'package:flowltter/ui/home/home_state.dart';

import 'package:meta/meta.dart';


class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    @required FirebaseDatasource firebaseDatasource,
  })  : assert(firebaseDatasource != null),
        _firebaseDatasource = firebaseDatasource,
        super(const HomeState());

  final FirebaseDatasource _firebaseDatasource;

  @override
  Stream<HomeState> mapEventToState(
      HomeEvent event,
      ) async* {
    if (event is HomePageLoaded) {
      var homeChangedState = await _mapHomeChangedToState(event, state);
      yield homeChangedState;
    } 
  }
  
  Future<HomeState> _mapHomeChangedToState(HomeEvent event, HomeState state) async {
    var articles = await _firebaseDatasource.getArtices();
    articles.sort((a1, a2) => a1.creationDate.compareTo(a2.creationDate) );
    return state.copyWith(article: articles[0]);
  }
  
}

