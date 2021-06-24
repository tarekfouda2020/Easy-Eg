part of 'AcceptOrderSuccessImports.dart';


class AcceptOrderSuccess extends StatefulWidget {
  final Color color;

  const AcceptOrderSuccess({required this.color});
  @override
  _AcceptOrderSuccessState createState() => _AcceptOrderSuccessState();
}

class _AcceptOrderSuccessState extends State<AcceptOrderSuccess>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.color,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              BuildCheckView(),
              BuildSuccessText(),
            ],
          ),

          DefaultButton(
            title: tr(context,"BackToMain"),
            color: widget.color,
            textColor: MyColors.white,
            borderColor: MyColors.white,
            margin: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
            onTap: ()=> AutoRouter.of(context).popUntilRouteWithName(ProviderHomeRoute.name),
          ),
        ],
      ),

    );
  }
}

