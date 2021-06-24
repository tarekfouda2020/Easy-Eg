part of 'ContactUsWidgetsImports.dart';

class BuildContactSocial extends StatelessWidget {
  final ContactUsData contactUsData;
  final Color color;
  const BuildContactSocial({required this.contactUsData, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15))),
      child: Column(
        children: [
          MyText(
              title: tr(context,"viaSocialMedia"),
              color: MyColors.blackOpacity,
              size: 10),
          BlocBuilder<GenericBloc<List<SocialModel>>, GenericState<List<SocialModel>>>(
            bloc: contactUsData.socialCubit,
            builder: (context, state) {
              if (state is GenericUpdateState) {
                return BuildSocialItems(
                  socials: state.data,
                );
              }
              return LoadingDialog.showLoadingView(color: color);
            },
          )
        ],
      ),
    );
  }
}
