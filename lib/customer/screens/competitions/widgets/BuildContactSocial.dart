part of 'CompetitionsWidgetsImports.dart';

class BuildContactSocial extends StatelessWidget {
  final CompetitionsData contactUsData;
  final Color color;
  const BuildContactSocial({required this.contactUsData, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: BlocBuilder<GenericBloc<List<SocialModel>>, GenericState<List<SocialModel>>>(
        bloc: contactUsData.socialCubit,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return BuildSocialItems(
              socials: state.data,
            );
          }
          return LoadingDialog.showLoadingView(color: color);
        },
      ),
    );
  }
}
