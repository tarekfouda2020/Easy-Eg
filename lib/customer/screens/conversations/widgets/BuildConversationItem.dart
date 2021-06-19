part of 'ConvWidgetsImports.dart';

class BuildConversationItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          CachedImage(
            url:
                "https://images.unsplash.com/photo-1535378917042-10a22c95931a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80",
            width: 60,
            height: 60,
            borderColor: MyColors.greyWhite,
            borderRadius: BorderRadius.circular(10),
          ),
          SizedBox(width: 5),
          Container(
            width: MediaQuery.of(context).size.width-100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      title: "طارق فودة",
                      color: MyColors.black,
                      size: 12,
                    ),
                    MyText(
                      title: "12/12/2021",
                      color: Colors.blueAccent,
                      size: 8,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                MyText(
                  title: "هذا النص يمكن استبدالة بنص " * 2,
                  color: MyColors.black,
                  size: 8,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
