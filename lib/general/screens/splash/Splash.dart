part of 'SplashImports.dart';

class Splash extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const Splash({required this.navigatorKey});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _checkingData();
    super.initState();
  }

  _checkingData() async {
    GlobalNotification.instance.setupNotification(widget.navigatorKey);
    Utils.manipulateSplashData(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [MyColors.primary, MyColors.white],
              begin: Alignment.bottomCenter,

        )),
        child: Center(
          child: AnimationContainer(
              index: 0,
              vertical: true,
              duration: Duration(milliseconds: 1000),
              distance: MediaQuery.of(context).size.height * .3,
              child: Hero(
                tag: Res.logo,
                child: Image.asset(
                  Res.logo,
                  width: 250,
                  height: 250,
                ),
              )),
        ),
      ),
    );
  }
}
