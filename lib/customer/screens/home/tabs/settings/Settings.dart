part of 'SettingsImports.dart';


class Settings extends StatelessWidget {
  final android = "https://play.google.com/store/apps/details?id=sa.aait.aspbranch.easy";
  final ios = "https://play.google.com/store/apps/details?id=sa.aait.aspbranch.easy";
  @override
  Widget build(BuildContext context) {
    var currentColor = context.watch<TabsColorCubit>().state.color;
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(title: tr(context,"more"),color: currentColor,back: false,),
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
                name: tr(context,"offers"),
                color: currentColor,
                onTap: ()=> AutoRouter.of(context).push(OffersRoute(color: currentColor)),
              ),
              BuildPageItem(
                name:tr(context,"competitions"),
                color: currentColor,
                onTap: ()=> AutoRouter.of(context).push(CompetitionsRoute(color: currentColor)),
              ),
              Offstage(
                offstage: !context.read<AuthCubit>().state.authorized,
                child: BuildPageItem(
                  name: tr(context,"conversations"),
                  color: currentColor,
                  onTap: ()=> AutoRouter.of(context).push(ConversationsRoute(color: currentColor)),
                ),
              ),
              Offstage(
                offstage: !context.read<AuthCubit>().state.authorized,
                child: BuildPageItem(
                  name: tr(context,"profile"),
                  color: currentColor,
                  onTap: ()=> AutoRouter.of(context).push(ProfileRoute(color: currentColor)),
                ),
              ),
              BuildPageItem(
                name: tr(context,"repeatedQuestions"),
                color: currentColor,
                onTap: ()=> AutoRouter.of(context).push(RepeatedQuestionsRoute(color: currentColor)),
              ),
              BuildPageItem(
                name: tr(context,"termsAndConditions"),
                color: currentColor,
                onTap: ()=> AutoRouter.of(context).push(TermsRoute(color: currentColor)),
              ),
              BuildPageItem(
                name: tr(context,"aboutApp"),
                color: currentColor,
                onTap: ()=> AutoRouter.of(context).push(AboutRoute(color: currentColor)),
              ),
              BuildPageItem(
                name: tr(context,"contactUs"),
                color: currentColor,
                onTap: ()=> AutoRouter.of(context).push(ContactUsRoute(color: currentColor)),
              ),
              BuildPageItem(
                name: tr(context,"shareApp"),
                color: currentColor,
                onTap: ()=> Utils.shareApp(Platform.isIOS?ios:android),
              ),
              BuildPageItem(
                name: tr(context,"lang"),
                color: currentColor,
                onTap: ()=> AutoRouter.of(context).push(LanguagesRoute(color: currentColor)),
              ),
              Visibility(
                visible: context.read<AuthCubit>().state.authorized,
                child: BuildPageItem(
                  name:tr(context,"logOut"),
                  color: currentColor,
                  onTap: ()=> CustomerRepository(context).logout(),
                ),
                replacement: BuildPageItem(
                  name: tr(context,"login"),
                  color: currentColor,
                  onTap: ()=> AutoRouter.of(context).push(SelectAuthRoute()),
                ),
              ),
              SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}

