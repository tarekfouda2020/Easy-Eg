part of 'ProfileWidgetImports.dart';

class BuildEditForm extends StatelessWidget {
  final ProviderProfileData profileData;

  const BuildEditForm({required this.profileData});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            LabelTextField(
              label: "الاسم",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.name,
              type: TextInputType.name,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            LabelTextField(
              label: "رقم الجوال",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.phone,
              type: TextInputType.phone,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validatePhone(context),
            ),
            LabelTextField(
              label: "رابط الفيسبوك",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.face,
              type: TextInputType.url,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            LabelTextField(
              label: "رابط الانستجرام",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.insta,
              type: TextInputType.url,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            InkWellTextField(
              label: "لوجو المحل",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.logo,
              type: TextInputType.text,
              borderColor: MyColors.grey,
              icon: Icon(Icons.camera_alt,size: 20,),
              validate: (value) => value!.validateEmpty(context),
              onTab: (){},
            ),
            RichTextFiled(
              label: "الوصف",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.images,
              type: TextInputType.text,
              borderColor: MyColors.grey,
              max: 5,
              validate: (value) => value!.validateEmpty(context),
            ),
            InkWellTextField(
              label: "صور الاعمال",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.images,
              type: TextInputType.text,
              borderColor: MyColors.grey,
              icon: Icon(Icons.camera_alt,size: 20,),
              validate: (value) => value!.validateEmpty(context),
              onTab: (){},
            ),
            LabelTextField(
              label: "رابط الفديو",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.video,
              type: TextInputType.url,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
          ],
        ),
      ),
    );
  }
}

