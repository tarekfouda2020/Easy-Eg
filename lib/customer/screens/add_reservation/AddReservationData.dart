part of 'AddReservationImports.dart';

class AddReservationData {
  final GlobalKey<FormState> formKey = new GlobalKey();

  final TextEditingController name = new TextEditingController();
  final TextEditingController phone = new TextEditingController();
  final TextEditingController date = new TextEditingController();

  final GenericBloc<String?> dateCubit = new GenericBloc(null);

  setReservationDate(BuildContext context) {
    AdaptivePicker.datePicker(
      context: context,
      onConfirm: (selectedDate){
        if (selectedDate !=null) {
          String dateStr = DateFormat("dd-MM-yyyy").format(selectedDate);
          dateCubit.onUpdateData(dateStr);
          return;
        }
        dateCubit.onUpdateData(null);
      },
      title: "تاريخ الحجز",
    );
  }
}
