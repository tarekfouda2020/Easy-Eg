part of 'ProfileWidgetImports.dart';

class BuildProfileButtons extends StatelessWidget {
  final Color color;
  final ProviderProfileData profileData;
  const BuildProfileButtons({required this.color, required this.profileData});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          LoadingButton(
            title: tr(context,'confirm'),
            btnKey: profileData.btnKey,
            onTap: ()=> profileData.setUpdateProvider(context),
            color: color,
            margin: EdgeInsets.symmetric(vertical: 20),
          ),
          DefaultButton(
            title: tr(context,"confirmPass"),
            onTap: ()=> AutoRouter.of(context).push(ChangePasswordRoute(color: color)),
            color: Colors.transparent,
            borderColor: MyColors.black,
            textColor: MyColors.black,
            margin: EdgeInsets.only(bottom: 20),
          ),
        ],
      ),
    );
  }
}

