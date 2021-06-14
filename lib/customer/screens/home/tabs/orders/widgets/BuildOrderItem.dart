part of 'OrdersWidgetsImports.dart';

class BuildOrderItem extends StatelessWidget {
  final Color color;
  final Function()? onTap;

  const BuildOrderItem({required this.color,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CachedImage(
              url:
                  "https://images.unsplash.com/photo-1587987501183-33e43fdde781?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1103&q=80",
              width: 60,
              height: 60,
            ),
            SizedBox(width: 5),
            Container(
              width: MediaQuery.of(context).size.width - 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(title: "نادي الجزيرة", color: MyColors.black, size: 10),
                  SizedBox(height: 5),
                  MyText(
                      title: "مصر - المنصورة - برج السوسن",
                      color: color.withOpacity(.7),
                      size: 10),
                ],
              ),
            ),
            Column(
              children: [
                MyText(
                    title: "رقم الطلب", color: color.withOpacity(.7), size: 10),
                MyText(title: "#####", color: color.withOpacity(.7), size: 10),
              ],
            )
          ],
        ),
      ),
    );
  }
}
