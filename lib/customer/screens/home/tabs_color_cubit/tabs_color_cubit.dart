import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'tabs_color_state.dart';

class TabsColorCubit extends Cubit<TabsColorState> {
  TabsColorCubit() : super(TabsColorInitial());

  onUpdateColor(Color color){
    emit(TabsColorUpdated(color,!state.changed));
  }

}
