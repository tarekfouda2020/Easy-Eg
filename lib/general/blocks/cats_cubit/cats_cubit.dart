import 'package:base_flutter/customer/models/CategoryModel.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'cats_state.dart';

class CatsCubit extends Cubit<CatsState> {
  CatsCubit() : super(CatsInitial());

  onUpdateCats(List<CategoryModel> cats){
    emit(CatsUpdateState(cats, !state.changed));
  }

}
