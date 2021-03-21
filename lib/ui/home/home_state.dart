import 'package:equatable/equatable.dart';
import 'package:flowltter/models/article.dart';

class HomeState extends Equatable {
  const HomeState({this.article});

  final Article article;

  HomeState copyWith({
    Article article,
  }) {
    return HomeState(
      article: article,
    );
  }

  @override
  List<Object> get props => [article];
}
