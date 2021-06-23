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
              label: "الاسم",
              margin: EdgeInsets.only(top: 15),
              controller: registerData.name,
              type: TextInputType.name,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            LabelTextField(
              label: "رقم الجوال",
              margin: EdgeInsets.only(top: 15),
              controller: registerData.phone,
              type: TextInputType.phone,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validatePhone(context),
            ),
            BuildCategoriesView(registerData: registerData),
            LabelTextField(
              label: "رابط الفيسبوك",
              margin: EdgeInsets.only(top: 15),
              controller: registerData.face,
              type: TextInputType.url,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            LabelTextField(
              label: "رابط الانستجرام",
              margin: EdgeInsets.only(top: 15),
              controller: registerData.insta,
              type: TextInputType.url,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            InkWellTextField(
              label: "لوجو المحل",
              margin: EdgeInsets.only(top: 15),
              controller: registerData.logo,
              type: TextInputType.text,
              borderColor: MyColors.grey,
              icon: Icon(Icons.camera_alt,size: 20,),
              validate: (value) => value!.validateEmpty(context),
              onTab: (){},
            ),
            RichTextFiled(
              label: "الوصف",
              margin: EdgeInsets.only(top: 15),
              controller: registerData.images,
              type: TextInputType.text,
              borderColor: MyColors.grey,
              max: 5,
              validate: (value) => value!.validateEmpty(context),
            ),
            InkWellTextField(
              label: "صور الاعمال",
              margin: EdgeInsets.only(top: 15),
              controller: registerData.images,
              type: TextInputType.text,
              borderColor: MyColors.grey,
              icon: Icon(Icons.camera_alt,size: 20,),
              validate: (value) => value!.validateEmpty(context),
              onTab: (){},
            ),
            LabelTextField(
              label: "رابط الفديو",
              margin: EdgeInsets.only(top: 15),
              controller: registerData.video,
              type: TextInputType.url,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            LabelTextField(
              label: "كلمة المرور",
              margin: EdgeInsets.only(top: 15),
              controller: registerData.pass,
              type: TextInputType.text,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              isPassword: true,
              validate: (value) => value!.validatePassword(context),
            ),
            LabelTextField(
              label: "تاكيد كلمة المرور",
              margin: EdgeInsets.only(top: 15),
              controller: registerData.confirm,
              type: TextInputType.text,
              action: TextInputAction.done,
              borderColor: MyColors.grey,
              isPassword: true,
              validate: (value) => value!.validatePasswordConfirm(context,pass: registerData.pass.text),
              onSubmit: ()=>registerData.setRegisterProvider(context),
            ),
          ],
        ),
      ),
    );
  }
}
