part of 'ReservSuccessWidgetImports.dart';

class BuildContactView extends StatelessWidget {
  final Color color;
  final ProductModel model;

  const BuildContactView({required this.color, required this.model});

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
            onTap: ()=> Utils.callPhone(phone: model.phone),
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
