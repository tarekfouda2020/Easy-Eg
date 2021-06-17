part of 'OffersImports.dart';

class Offers extends StatefulWidget {
  final Color color;

  const Offers({required this.color});

  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  OffersData offersData = new OffersData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: "العروض",
          color: widget.color,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [widget.color.withOpacity(.5), MyColors.white],
          begin: Alignment.bottomCenter,
        )),
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: CachedImage(
                height: 140,
                width: MediaQuery.of(context).size.width,
                url: "https://images.unsplash.com/photo-1611403570720-162d8829689a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80",
                borderRadius: BorderRadius.circular(10),
              ),
            );
          },
        ),
      ),
    );
  }
}
