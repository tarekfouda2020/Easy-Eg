part of 'ConRegisterWidgetsImports.dart';



class BuildRegisterForm extends StatelessWidget {
  final SecondScreenData registerData;

  const BuildRegisterForm({required this.registerData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.only(bottom: 30),
      child: Form(
        key: registerData.formKey,
        child: Column(
          children: [
            LabelTextField(
              label:tr(context,"placeOrHallInAr"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.nameAr,
              type: TextInputType.name,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            LabelTextField(
              label: tr(context,"placeOrHallInEn"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.nameEn,
              type: TextInputType.name,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            LabelTextField(
              label:tr(context,"instagramLinkOptional"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.insta,
              type: TextInputType.url,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.noValidate(),
            ),
            LabelTextField(
              label: tr(context,"faceLinkOptional"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.face,
              type: TextInputType.url,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.noValidate(),
            ),
            LabelTextField(
              label: tr(context,"twitterLinkOptional"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.twitter,
              type: TextInputType.url,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.noValidate(),
            ),
            LabelTextField(
              label: tr(context,"telegramLinkOptional"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.telegram,
              type: TextInputType.url,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.noValidate(),
            ),
            BlocConsumer<GenericBloc<File?>, GenericState<File?>>(
              bloc: registerData.coverCubit,
              listener: (context, state) {
                if (state.data != null) {
                  registerData.cover.text = state.data!
                      .path
                      .split("/")
                      .last;
                }
              },
              builder: (context, state) {
                return InkWellTextField(
                  label:tr(context,"background"),
                  margin: EdgeInsets.only(top: 15),
                  controller: registerData.cover,
                  type: TextInputType.text,
                  borderColor: MyColors.grey,
                  icon: Icon(Icons.camera_alt, size: 20,),
                  validate: (value) => value!.validateEmpty(context),
                  onTab: () => registerData.setCoverImage(),
                );
              },
            ),
            BlocConsumer<GenericBloc<File?>, GenericState<File?>>(
              bloc: registerData.mainCubit,
              listener: (context, state) {
                if (state.data != null) {
                  registerData.mainImage.text = state.data!
                      .path
                      .split("/")
                      .last;
                }
              },
              builder: (context, state) {
                return InkWellTextField(
                  label: tr(context,"mainImageForPlaceAndHall"),
                  margin: EdgeInsets.only(top: 15),
                  controller: registerData.mainImage,
                  type: TextInputType.text,
                  borderColor: MyColors.grey,
                  icon: Icon(Icons.camera_alt, size: 20,),
                  validate: (value) => value!.validateEmpty(context),
                  onTab: () => registerData.setMainImage(),
                );
              },
            ),

            BlocConsumer<LocationCubit,LocationState>(
              bloc: registerData.locCubit,
              listener: (context,state){
                registerData.location.text=state.model.address;
                registerData.lat=state.model.lat;
                registerData.lng=state.model.lng;
              },
              builder: (context,state){
                return InkWellTextField(
                  label: tr(context,"location"),
                  margin: EdgeInsets.only(top: 15),
                  controller: registerData.location,
                  type: TextInputType.text,
                  borderColor: MyColors.grey,
                  icon: Icon(Icons.location_on,size: 20,),
                  validate: (value) => value!.validateEmpty(context),
                  onTab: ()=>Utils.navigateToLocationAddress(context,registerData.locCubit),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
