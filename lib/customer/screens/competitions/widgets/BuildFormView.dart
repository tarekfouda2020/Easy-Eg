part of 'CompetitionsWidgetsImports.dart';

class BuildFormView extends StatelessWidget {
  final CompetitionsData competitionsData;

  const BuildFormView({required this.competitionsData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Form(
        key: competitionsData.formKey,
        child: Column(
          children: [
            LabelTextField(
              label: "الاسم",
              margin: EdgeInsets.only(top: 15),
              controller: competitionsData.name,
              validate: (value) => value!.validateEmpty(context),
              type: TextInputType.name,
              borderColor: MyColors.grey,
              action: TextInputAction.next,
            ),
            LabelTextField(
              label: "رقم الجوال",
              margin: EdgeInsets.only(top: 15),
              controller: competitionsData.phone,
              validate: (value) => value!.validatePhone(context),
              type: TextInputType.number,
              borderColor: MyColors.grey,
              action: TextInputAction.next,
            ),
            LabelTextField(
              label: "العنوان",
              margin: EdgeInsets.only(top: 15),
              controller: competitionsData.address,
              validate: (value) => value!.validateEmpty(context),
              type: TextInputType.text,
              borderColor: MyColors.grey,
              action: TextInputAction.done,
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    title: "متابعة لصفحة الفيس بوك",
                    color: MyColors.blackOpacity,
                    size: 10,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 5),
                  BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                    bloc: competitionsData.faceCubit,
                    builder: (context, state) {
                      return Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: MyText(title: "لا",
                                color: MyColors.blackOpacity,
                                size: 10,
                                fontWeight: FontWeight.w600,),
                              leading: Radio<bool>(
                                value: false,
                                groupValue: state.data,
                                onChanged: (value) =>
                                    competitionsData.faceCubit.onUpdateData(value!),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: MyText(title: "نعم",
                                color: MyColors.blackOpacity,
                                size: 10,
                                fontWeight: FontWeight.w600,),
                              leading: Radio<bool>(
                                value: true,
                                groupValue: state.data,
                                onChanged: (value) =>
                                    competitionsData.faceCubit.onUpdateData(value!),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    title: "متابعة لصفحة اليوتيوب",
                    color: MyColors.blackOpacity,
                    size: 10,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 5),
                  BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                    bloc: competitionsData.youtubeCubit,
                    builder: (context, state) {
                      return Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: MyText(title: "لا",
                                color: MyColors.blackOpacity,
                                size: 10,
                                fontWeight: FontWeight.w600,),
                              leading: Radio<bool>(
                                value: false,
                                groupValue: state.data,
                                onChanged: (value) => competitionsData.youtubeCubit.onUpdateData(value!),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: MyText(title: "نعم",
                                color: MyColors.blackOpacity,
                                size: 10,
                                fontWeight: FontWeight.w600,),
                              leading: Radio<bool>(
                                value: true,
                                groupValue: state.data,
                                onChanged: (value) => competitionsData.youtubeCubit.onUpdateData(value!),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
