part of "ChampionDetailsWidgetsImports.dart";

class ChampionDetailsBtn extends StatelessWidget {
  final ChampionDetailsData _championDetailsData;
  const ChampionDetailsBtn(this._championDetailsData);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Utils.launchURL(
                url:
                    "https://play.google.com/store/apps/details?id=sa.aait.aspbranch.easy"),
            child: Row(
              children: [
                MyText(
                  title: "Android Link",
                  size: 16,
                  color: MyColors.primary,
                ),
                Icon(
                  MdiIcons.googlePlay,
                  size: 35,
                  color: Colors.green,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () => Utils.launchURL(
                url: "https://apps.apple.com/us/app/easy/id1573741469"),
            child: Row(
              children: [
                MyText(
                  title: "IOS Link",
                  size: 16,
                  color: MyColors.primary,
                ),
                Icon(
                  MdiIcons.appleIos,
                  size: 35,
                  color: Colors.green,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
