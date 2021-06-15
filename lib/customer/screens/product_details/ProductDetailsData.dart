part of 'ProductDetailsImports.dart';

class ProductDetailsData{
  final ScrollController scrollController = new ScrollController();
  final GenericCubit<bool> barCubit = new GenericCubit(false);

  void scrollListener() {
    if (scrollController.offset >= 200) {
      barCubit.onUpdateData(true);
    } else {
      barCubit.onUpdateData(false);
    }
  }

}