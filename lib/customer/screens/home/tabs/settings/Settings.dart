part of 'SettingsImports.dart';


class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var currentColor = context.watch<TabsColorCubit>().state.color;
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(title: "المزيد",color: currentColor,back: false,),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        padding: EdgeInsets.only(bottom: 100),
        color: currentColor,
        child: CupertinoScrollbar(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 15),
            children: [
              BuildPageItem(
                name: "العروض",
                color: currentColor,
                onTap: ()=> AutoRouter.of(context).push(OffersRoute(color: currentColor)),
              ),
              BuildPageItem(
                name: "المسابقات",
                color: currentColor,
                onTap: (){},
              ),
              BuildPageItem(
                name: "المحادثات",
                color: currentColor,
                onTap: (){},
              ),
              BuildPageItem(
                name: "الملف الشخصي",
                color: currentColor,
                onTap: ()=> AutoRouter.of(context).push(ProfileRoute(color: currentColor)),
              ),
              BuildPageItem(
                name: "اسئلة متكررة",
                color: currentColor,
                onTap: ()=> AutoRouter.of(context).push(RepeatedQuestionsRoute(color: currentColor)),
              ),
              BuildPageItem(
                name: "الشروض والاحكام",
                color: currentColor,
                onTap: (){},
              ),
              BuildPageItem(
                name: "عن التطبيق",
                color: currentColor,
                onTap: (){},
              ),
              BuildPageItem(
                name: "اتصل بنا",
                color: currentColor,
                onTap: (){},
              ),
              BuildPageItem(
                name: "مشاركة التطبيق",
                color: currentColor,
                onTap: (){},
              ),
              BuildPageItem(
                name: "اللغة",
                color: currentColor,
                onTap: (){},
              ),
              BuildPageItem(
                name: "تسجيل خروج",
                color: currentColor,
                onTap: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

