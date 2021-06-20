part of 'OrderDetailsWidgetImports.dart';

class BuildOrderActions extends StatelessWidget {
  final Color color;

  const BuildOrderActions({required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DefaultButton(
            title: "قبول",
            color: color,
            width: MediaQuery.of(context).size.width*.4,
            onTap: () => AutoRouter.of(context).push(AcceptOrderSuccessRoute(color: color)),
          ),
          DefaultButton(
            title: "رفض",
            color: MyColors.red,
            width: MediaQuery.of(context).size.width*.4,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
