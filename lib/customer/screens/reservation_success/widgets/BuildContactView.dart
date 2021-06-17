part of 'ReservSuccessWidgetImports.dart';

class BuildContactView extends StatelessWidget {
  final Color color;

  const BuildContactView({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BuildContactItem(
            color: color,
            title: "رقم جوال",
            image: Res.phone,
            onTap: (){},
          ),
          BuildContactItem(
            color: color,
            title: "اجراء محادثة",
            image: Res.chat,
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
