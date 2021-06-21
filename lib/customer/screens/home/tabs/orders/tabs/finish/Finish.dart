part of 'FinishImports.dart';

class Finish extends StatelessWidget {
  final Color color;

  const Finish({required this.color});
  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 15),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return BuildOrderItem(color: color);
        },
        separatorBuilder: (_,index){
          return Divider(color: MyColors.grey,);
        },
      ),
    );
  }
}

