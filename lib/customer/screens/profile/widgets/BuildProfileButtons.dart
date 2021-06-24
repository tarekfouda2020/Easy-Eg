part of 'ProfileWidgetImports.dart';

class BuildProfileButtons extends StatelessWidget {
  final Color color;
  final ProfileData profileData;

  const BuildProfileButtons({required this.color,required this.profileData});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          LoadingButton(
            btnKey: profileData.btnKey,
            title: tr(context,"confirm"),
            onTap: ()=>profileData.setUpdateProfile(context),
            color: color,
            margin: EdgeInsets.symmetric(vertical: 20),
          ),
          DefaultButton(
            title: tr(context,"changePassword"),
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

