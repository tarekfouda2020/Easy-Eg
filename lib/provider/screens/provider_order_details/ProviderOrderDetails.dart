part of 'ProviderOrderDetailsImports.dart';


class ProviderOrderDetails extends StatefulWidget {
  final Color color;

  const ProviderOrderDetails({required this.color});
  @override
  _ProviderOrderDetailsState createState() => _ProviderOrderDetailsState();
}

class _ProviderOrderDetailsState extends State<ProviderOrderDetails>{

   ProviderOrderDetailsData detailsData = new ProviderOrderDetailsData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(title: "تفاصيل الطلب",color: widget.color,),
        preferredSize: Size.fromHeight(60),
      ),

      body: LinearContainer(
        color: widget.color,
        child: Column(
          children: [
            Flexible(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: BuildOrderCard(color: widget.color),
                  ),
                  BuildDetailsHeader(),
                  BuildDetailsBody(color: widget.color,)
                ],
              ),
            ),
            BuildOrderActions(color: widget.color),
          ],
        ),
      ),

    );
  }
}

