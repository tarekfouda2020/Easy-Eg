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
        key: registerData.formKey,
        child: Column(
          children: [
            LabelTextField(
              label: tr(context,"name"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.name,
              type: TextInputType.name,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            LabelTextField(
              label:tr(context,"phone"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.phone,
              type: TextInputType.phone,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validatePhone(context),
            ),
            LabelTextField(
              label: tr(context,"email"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.mail,
              type: TextInputType.emailAddress,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmail(context),
            ),
            BuildCategoriesView(registerData: registerData),
            BlocConsumer<GenericBloc<File?>, GenericState<File?>>(
              bloc: registerData.logoCubit,
              listener: (context, state) {
                if (state.data != null) {
                  registerData.logo.text = state.data!
                      .path
                      .split("/")
                      .last;
                }
              },
              builder: (context, state) {
                return InkWellTextField(
                  label: tr(context,"marketLogo"),
                  margin: EdgeInsets.only(top: 15),
                  controller: registerData.logo,
                  type: TextInputType.text,
                  borderColor: MyColors.grey,
                  icon: Icon(Icons.camera_alt, size: 20,),
                  validate: (value) => value!.validateEmpty(context),
                  onTab: () => registerData.setLogoImage(),
                );
              },
            ),
            RichTextFiled(
              label: tr(context,'desc'),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.desc,
              type: TextInputType.text,
              borderColor: MyColors.grey,
              max: 5,
              validate: (value) => value!.validateEmpty(context),
            ),
            BlocConsumer<GenericBloc<List<File>>, GenericState<List<File>>>(
              bloc: registerData.imagesCubit,
              listener: (context, state) {
                if (state.data.length>0) {
                  registerData.images.text="تم تحديد ${state.data.length} صورة";
                }
              },
              builder: (context, state) {
                return InkWellTextField(
                  label: tr(context,"worksImages"),
                  margin: EdgeInsets.only(top: 15),
                  controller: registerData.images,
                  type: TextInputType.text,
                  borderColor: MyColors.grey,
                  icon: Icon(Icons.camera_alt, size: 20,),
                  validate: (value) => value!.validateEmpty(context),
                  onTab: () => registerData.setImages(),
                );
              },
            ),
            LabelTextField(
              label: tr(context,"videoLink"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.video,
              type: TextInputType.url,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            LabelTextField(
              label: tr(context,"password"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.pass,
              type: TextInputType.text,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              isPassword: true,
              validate: (value) => value!.validatePassword(context),
            ),
            LabelTextField(
              label:tr(context,"confirmPass"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.confirm,
              type: TextInputType.text,
              action: TextInputAction.done,
              borderColor: MyColors.grey,
              isPassword: true,
              validate: (value) =>
                  value!.validatePasswordConfirm(
                      context, pass: registerData.pass.text),
              onSubmit: () => registerData.setRegisterProvider(context),
            ),
          ],
        ),
      ),
    );
  }
}
