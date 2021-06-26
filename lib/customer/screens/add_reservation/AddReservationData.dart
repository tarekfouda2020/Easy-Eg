part of 'AddReservationImports.dart';

class AddReservationData {
  final GlobalKey<FormState> formKey = new GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = new GlobalKey();

  final TextEditingController name = new TextEditingController();
  final TextEditingController phone = new TextEditingController();
  final TextEditingController date = new TextEditingController();

  final GenericBloc<String?> dateCubit = new GenericBloc(null);

  setReservationDate(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
    AdaptivePicker.datePicker(
      context: context,
      onConfirm: (selectedDate) {
        if (selectedDate != null) {
          String dateStr = DateFormat("MM/dd/yyyy").format(selectedDate);
          dateCubit.onUpdateData(dateStr);
          return;
        }
        dateCubit.onUpdateData(null);
      },
      title: tr(context,"reserveDate"),
    );
  }

  setAddReservation(
      BuildContext context, ProductModel productModel, Color color) async {
    if (formKey.currentState!.validate()) {
      btnKey.currentState!.animateForward();
      AddReservationModel model = new AddReservationModel(
          phone: phone.text,
          name: name.text,
          date: dateCubit.state.data,
          providerId: productModel.idProvider);
      var result = await CustomerRepository(context).addOrder(model);
      if (result != 0) {
        AutoRouter.of(context).push(ReservationSuccessRoute(
          color: color,
          model: productModel,
          orderId: result,
        ));
      }
      btnKey.currentState!.animateReverse();
    }
  }
}
