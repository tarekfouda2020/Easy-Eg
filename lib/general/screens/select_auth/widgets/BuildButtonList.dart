part of 'SelectUserWidgetsImports.dart';

class BuildButtonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          DefaultButton(
            title: tr(context,"login"),
            onTap: () => AutoRouter.of(context).push(LoginRoute()),
            margin: const EdgeInsets.symmetric(vertical: 15),
          ),
          DefaultButton(
            title: tr(context,"newRegister"),
            onTap: () => AutoRouter.of(context).push(RegisterRoute()),
            margin: EdgeInsets.zero,
          ),
          DefaultButton(
            title: tr(context,"getHelp"),
            onTap: (){},
            margin: const EdgeInsets.symmetric(vertical: 15),
          ),
        ],
      ),
    );
  }
}
