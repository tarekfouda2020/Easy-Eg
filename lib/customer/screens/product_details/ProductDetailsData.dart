part of 'ProductDetailsImports.dart';

class ProductDetailsData{
  final ScrollController scrollController = new ScrollController();
  final GenericBloc<bool> barCubit = new GenericBloc(false);

  void scrollListener() {
    if (scrollController.offset >= 200) {
      barCubit.onUpdateData(true);
    } else {
      barCubit.onUpdateData(false);
    }
  }

}