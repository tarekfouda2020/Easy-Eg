part of 'ProfileWidgetImports.dart';

class BuildEditForm extends StatelessWidget {
  final ProviderProfileData profileData;

  const BuildEditForm({required this.profileData});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: profileData.formKey,
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
              label: "البريد الالكتروني",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.mail,
              type: TextInputType.emailAddress,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmail(context),
            ),
            BuildCategoriesView(profileData: profileData),
            BlocConsumer<GenericBloc<File?>, GenericState<File?>>(
              bloc: profileData.logoCubit,
              listener: (context, state) {
                if (state.data != null) {
                  profileData.logo.text = state.data!
                      .path
                      .split("/")
                      .last;
                }
              },
              builder: (context, state) {
                return InkWellTextField(
                  label: "لوجو المحل",
                  margin: EdgeInsets.only(top: 15),
                  controller: profileData.logo,
                  type: TextInputType.text,
                  borderColor: MyColors.grey,
                  icon: Icon(Icons.camera_alt, size: 20,),
                  validate: (value) => value!.validateEmpty(context),
                  onTab: () => profileData.setLogoImage(),
                );
              },
            ),
            RichTextFiled(
              label: "الوصف",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.desc,
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
              icon: Icon(Icons.camera_alt, size: 20,),
              validate: (value) => value!.noValidate(),
              onTab: () => profileData.setImages(),
            ),

            BlocBuilder<GenericBloc<WorkImagesModel>, GenericState<WorkImagesModel>>(
              bloc: profileData.imagesCubit,
              builder: (context, state) {
                return Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 15,
                    alignment: WrapAlignment.start,
                    children: [
                      ...state.data.existImages.map((e){
                        return CachedImage(
                          url: e.img,
                          height: 80,
                          width: 80,
                          fit: BoxFit.fill,
                          borderRadius: BorderRadius.circular(6),
                          colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
                          alignment: Alignment.topLeft,
                          child: InkWell(
                            onTap: (){},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(Icons.close,size: 25,color: MyColors.white,),
                            ),
                          ),
                        );
                      }),
                      ...state.data.addedImages.map((e){
                        return Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              image: DecorationImage(
                              image: FileImage(e),
                              fit: BoxFit.fill,
                                colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
                            ),
                          ),
                          alignment: Alignment.topLeft,
                          child: InkWell(
                            onTap: ()=>profileData.setRemoveAddImage(e),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(Icons.close,size: 25,color: MyColors.white,),
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                );
              },
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

            LabelTextField(
              label: "اسم المحل او القاعة بالعربي",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.nameAr,
              type: TextInputType.name,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            LabelTextField(
              label: "اسم المحل او القاعة بالانجليزي",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.nameEn,
              type: TextInputType.name,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            LabelTextField(
              label: "رابط الانستجرام (اختياري)",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.insta,
              type: TextInputType.url,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.noValidate(),
            ),
            LabelTextField(
              label: "رابط الفيسبوك  (اختياري)",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.face,
              type: TextInputType.url,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.noValidate(),
            ),
            LabelTextField(
              label: "رابط تويتر  (اختياري)",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.twitter,
              type: TextInputType.url,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.noValidate(),
            ),
            LabelTextField(
              label: "رابط التليجرام  (اختياري)",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.telegram,
              type: TextInputType.url,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.noValidate(),
            ),
            BlocConsumer<GenericBloc<File?>, GenericState<File?>>(
              bloc: profileData.coverCubit,
              listener: (context, state) {
                if (state.data != null) {
                  profileData.cover.text = state.data!
                      .path
                      .split("/")
                      .last;
                }
              },
              builder: (context, state) {
                return InkWellTextField(
                  label: "صورة خلفية",
                  margin: EdgeInsets.only(top: 15),
                  controller: profileData.cover,
                  type: TextInputType.text,
                  borderColor: MyColors.grey,
                  icon: Icon(Icons.camera_alt, size: 20,),
                  validate: (value) => value!.validateEmpty(context),
                  onTab: () => profileData.setCoverImage(),
                );
              },
            ),

            BlocConsumer<GenericBloc<File?>, GenericState<File?>>(
              bloc: profileData.mainCubit,
              listener: (context, state) {
                if (state.data != null) {
                  profileData.mainImage.text = state.data!
                      .path
                      .split("/")
                      .last;
                }
              },
              builder: (context, state) {
                return InkWellTextField(
                  label: "صورة رئسية للمحل او القاعة",
                  margin: EdgeInsets.only(top: 15),
                  controller: profileData.mainImage,
                  type: TextInputType.text,
                  borderColor: MyColors.grey,
                  icon: Icon(Icons.camera_alt, size: 20,),
                  validate: (value) => value!.validateEmpty(context),
                  onTab: () => profileData.setMainImage(),
                );
              },
            ),

            BlocConsumer<LocationCubit,LocationState>(
              bloc: profileData.locCubit,
              listener: (context,state){
                profileData.location.text=state.model.address;
                profileData.lat=state.model.lat;
                profileData.lng=state.model.lng;
              },
              builder: (context,state){
                return InkWellTextField(
                  label: "العنوان",
                  margin: EdgeInsets.only(top: 15),
                  controller: profileData.location,
                  type: TextInputType.text,
                  borderColor: MyColors.grey,
                  icon: Icon(Icons.location_on,size: 20,),
                  validate: (value) => value!.validateEmpty(context),
                  onTab: ()=>Utils.navigateToLocationAddress(context,profileData.locCubit),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}

