part of 'WaitingImports.dart';

class Waiting extends StatelessWidget {
  final Color color;

  const Waiting({required this.color});
  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 15),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return BuildOrderItem(color: color,);
        },
        separatorBuilder: (_,index){
          return Divider(color: MyColors.grey,);
        },
      ),
    );
  }
}

