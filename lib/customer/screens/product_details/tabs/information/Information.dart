part of 'InformationImports.dart';

class Information extends StatelessWidget {
  final Color color;

  const Information({required this.color});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: [
        BuildInfoDetails(color: color),
        BuildVideoView(),
        DefaultButton(
          title: "حجز القاعة",
          margin: EdgeInsets.only(bottom: 30),
          onTap: () {},
        )
      ],
    );
  }
}
