part of 'AddReservWidgetImports.dart';


class BuildFormView extends StatelessWidget {

  final AddReservationData addReservationData;

  const BuildFormView({required this.addReservationData});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              LabelTextField(
                label: "اسم المستفيد",
                margin: EdgeInsets.only(top: 15),
                controller: addReservationData.name,
                type: TextInputType.name,
                action: TextInputAction.next,
                borderColor: MyColors.grey,
                validate: (value) => value!.validateEmpty(context),
              ),
              LabelTextField(
                label: "رقم الجوال",
                margin: EdgeInsets.only(top: 15),
                controller: addReservationData.phone,
                type: TextInputType.phone,
                action: TextInputAction.next,
                borderColor: MyColors.grey,
                validate: (value) => value!.validatePhone(context),
              ),
              BlocConsumer<GenericBloc<String?>, GenericState<String?>>(
                bloc: addReservationData.dateCubit,
                listener: (_,state){
                  if (state.data!=null) {
                    addReservationData.date.text = state.data!;
                  } else{
                    addReservationData.date.text="";
                  }
                },
                builder: (_, state) {
                  return InkWellTextField(
                    label: "تاريخ الحجز",
                    margin: EdgeInsets.only(top: 15),
                    controller: addReservationData.date,
                    type: TextInputType.text,
                    borderColor: MyColors.grey,
                    icon: Icon(Icons.date_range_outlined, size: 20,),
                    validate: (value) => value!.validateEmpty(context),
                    onTab: () => addReservationData.setReservationDate(context),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
