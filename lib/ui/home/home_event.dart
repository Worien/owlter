import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class HomePageLoaded extends HomeEvent {
  const HomePageLoaded(this.welcomeText);

  final String welcomeText;

  @override
  List<Object> get props => [welcomeText];
}

