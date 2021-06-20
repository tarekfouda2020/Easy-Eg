part of 'ProviderOffersImports.dart';

class ProviderOffers extends StatefulWidget {
  final Color color;

  const ProviderOffers({required this.color});
  @override
  _ProviderOffersState createState() => _ProviderOffersState();
}

class _ProviderOffersState extends State<ProviderOffers>{

   ProviderOffersData offersData = new ProviderOffersData();

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
       body: LinearContainer(
         color: widget.color,
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

