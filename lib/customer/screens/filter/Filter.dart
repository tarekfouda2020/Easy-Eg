part of 'FilterImports.dart';

class Filter extends StatefulWidget {
  final Color color;

  const Filter({required this.color});

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  final FilterData filterData = new FilterData();

  @override
  void initState() {
    filterData.fetchCountries(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: "البحث التفصيلي",
          color: widget.color,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        color: widget.color,
        child: Column(
          children: [
            Flexible(
              child: ListView(
                children: [
                  BuildFilterForm(filterData: filterData),
                ],
              ),
            ),
            BuildFilterAction(
              color: widget.color,
              filterData: filterData,
            ),
          ],
        ),
      ),
    );
  }
}
