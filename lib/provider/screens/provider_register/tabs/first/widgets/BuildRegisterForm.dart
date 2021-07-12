part of 'RegisterWidgetsImports.dart';

class BuildRegisterForm extends StatelessWidget {
  final ProviderRegisterData registerData;

  const BuildRegisterForm({required this.registerData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.only(bottom: 30),
      child: Form(
        key: registerData.firstScreenData.formKey,
        child: Column(
          children: [
            LabelTextField(
              label: tr(context,"name"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.firstScreenData.name,
              type: TextInputType.name,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            LabelTextField(
              label:tr(context,"phone"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.firstScreenData.phone,
              type: TextInputType.phone,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validatePhone(context),
            ),
            LabelTextField(
              label: tr(context,"email"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.firstScreenData.mail,
              type: TextInputType.emailAddress,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmailORNull(context),
            ),
            BlocConsumer<GenericBloc<File?>, GenericState<File?>>(
              bloc: registerData.firstScreenData.logoCubit,
              listener: (context, state) {
                if (state.data != null) {
                  registerData.firstScreenData.logo.text = state.data!
                      .path
                      .split("/")
                      .last;
                }
              },
              builder: (context, state) {
                return InkWellTextField(
                  label: tr(context,"marketLogo"),
                  margin: EdgeInsets.only(top: 15),
                  controller: registerData.firstScreenData.logo,
                  type: TextInputType.text,
                  borderColor: MyColors.grey,
                  icon: Icon(Icons.camera_alt, size: 20,),
                  validate: (value) => value!.validateEmpty(context),
                  onTab: () => registerData.firstScreenData.setLogoImage(),
                );
              },
            ),
            RichTextFiled(
              label: tr(context,'desc'),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.firstScreenData.desc,
              type: TextInputType.text,
              borderColor: MyColors.grey,
              max: 5,
              validate: (value) => value!.validateEmpty(context),
            ),
            BlocConsumer<GenericBloc<List<File>>, GenericState<List<File>>>(
              bloc: registerData.firstScreenData.imagesCubit,
              listener: (context, state) {
                if (state.data.length>0) {
                  registerData.firstScreenData.images.text="${tr(context,"selected")} ${state.data.length} ${tr(context,"image")}";
                }
              },
              builder: (context, state) {
                return InkWellTextField(
                  label: tr(context,"worksImages"),
                  margin: EdgeInsets.only(top: 15),
                  controller: registerData.firstScreenData.images,
                  type: TextInputType.text,
                  borderColor: MyColors.grey,
                  icon: Icon(Icons.camera_alt, size: 20,),
                  validate: (value) => value!.validateEmpty(context),
                  onTab: () => registerData.firstScreenData.setImages(),
                );
              },
            ),
            LabelTextField(
              label: tr(context,"videoLink"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.firstScreenData.video,
              type: TextInputType.url,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.noValidate(),
            ),
            LabelTextField(
              label: tr(context,"password"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.firstScreenData.pass,
              type: TextInputType.text,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              isPassword: true,
              validate: (value) => value!.validatePassword(context),
            ),
            LabelTextField(
              label:tr(context,"confirmPass"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.firstScreenData.confirm,
              type: TextInputType.text,
              action: TextInputAction.done,
              borderColor: MyColors.grey,
              isPassword: true,
              validate: (value) =>
                  value!.validatePasswordConfirm(
                      context, pass: registerData.firstScreenData.pass.text),
              onSubmit: () => registerData.firstScreenData.setRegisterProvider(context,registerData),
            ),
          ],
        ),
      ),
    );
  }
}
