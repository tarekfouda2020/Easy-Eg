part of 'CompetitionsWidgetsImports.dart';

class BuildFormView extends StatelessWidget {
  final CompetitionsData competitionsData;
  final Color color;

  const BuildFormView({required this.competitionsData, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Form(
        key: competitionsData.formKey,
        child: Column(
          children: [
            LabelTextField(
              label: tr(context,"name"),
              margin: EdgeInsets.only(top: 15),
              controller: competitionsData.name,
              validate: (value) => value!.validateEmpty(context),
              type: TextInputType.name,
              borderColor: MyColors.grey,
              action: TextInputAction.next,
            ),
            LabelTextField(
              label: tr(context,"phone"),
              margin: EdgeInsets.only(top: 15),
              controller: competitionsData.phone,
              validate: (value) => value!.validatePhone(context),
              type: TextInputType.number,
              borderColor: MyColors.grey,
              action: TextInputAction.next,
            ),
            LabelTextField(
              label: tr(context,"location"),
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
                    title: tr(context,"followOnFacebook"),
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
                              title: MyText(title: tr(context,"no"),
                                color: MyColors.blackOpacity,
                                size: 10,
                                fontWeight: FontWeight.w600,),
                              leading: Radio<bool>(
                                value: false,
                                activeColor: color,
                                fillColor: MaterialStateProperty.all(color),
                                groupValue: state.data,
                                onChanged: (value) =>
                                    competitionsData.faceCubit.onUpdateData(value!),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: MyText(title: tr(context,"yes"),
                                color: MyColors.blackOpacity,
                                size: 10,
                                fontWeight: FontWeight.w600,),
                              leading: Radio<bool>(
                                value: true,
                                groupValue: state.data,
                                activeColor: color,
                                fillColor: MaterialStateProperty.all(color),
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
                    title: tr(context,"followOnYoutube"),
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
                              title: MyText(title: tr(context,"no"),
                                color: MyColors.blackOpacity,
                                size: 10,
                                fontWeight: FontWeight.w600,),
                              leading: Radio<bool>(
                                value: false,
                                groupValue: state.data,
                                activeColor: color,
                                fillColor: MaterialStateProperty.all(color),
                                onChanged: (value) => competitionsData.youtubeCubit.onUpdateData(value!),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: MyText(title: tr(context,"yes"),
                                color: MyColors.blackOpacity,
                                size: 10,
                                fontWeight: FontWeight.w600,),
                              leading: Radio<bool>(
                                value: true,
                                groupValue: state.data,
                                activeColor: color,
                                fillColor: MaterialStateProperty.all(color),
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
