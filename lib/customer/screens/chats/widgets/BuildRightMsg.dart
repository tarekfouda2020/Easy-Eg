part of 'ChatWidgetImports.dart';

class BuildRightMsg extends StatelessWidget {
  final MessageModel model;
  final UserModel user;

  const BuildRightMsg({required this.model, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Offstage(
          //   offstage: context.watch<UserCubit>().state.model.typeUser == 1,
          //   child: MyText(
          //     title: user.userName,
          //     size: 8,
          //     color: MyColors.blackOpacity,
          //   ),
          // ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              minHeight: 30,
              maxWidth: MediaQuery.of(context).size.width * .7,
              minWidth: MediaQuery.of(context).size.width * .4,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
              decoration: BoxDecoration(
                color: MyColors.greyWhite.withOpacity(.8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
              ),
              child: MyText(
                title: model.message??"",
                size: 9,
                color: MyColors.white,
              ),
            ),
          ),
          MyText(
            title: model.date??"",
            size: 8,
            color: MyColors.white.withOpacity(.6),
          ),
        ],
      ),
    );
  }
}
