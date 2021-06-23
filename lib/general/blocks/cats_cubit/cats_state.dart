part of 'cats_cubit.dart';

abstract class CatsState extends Equatable {
  final List<CategoryModel> cats;
  final bool changed;
  const CatsState(this.cats, this.changed);
}

class CatsInitial extends CatsState {
  CatsInitial() : super([], false);

  @override
  List<Object> get props => [cats,changed];
}

class CatsUpdateState extends CatsState {
  CatsUpdateState(List<CategoryModel> cats, bool changed) : super(cats, changed);

  @override
  List<Object> get props => [cats,changed];
}
