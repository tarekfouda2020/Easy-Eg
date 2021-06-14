part of 'tabs_color_cubit.dart';

abstract class TabsColorState extends Equatable {
  final Color color;
  final bool changed;
  const TabsColorState(this.color, this.changed);
}

class TabsColorInitial extends TabsColorState {
  TabsColorInitial() : super(MyColors.white, false);

  @override
  List<Object> get props => [changed];
}
class TabsColorUpdated extends TabsColorState {
  TabsColorUpdated(Color color, bool changed) : super(color,changed);

  @override
  List<Object> get props => [changed];
}
