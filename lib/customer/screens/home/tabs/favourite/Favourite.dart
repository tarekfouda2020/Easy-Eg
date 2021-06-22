part of 'FavouriteWidgetsImports.dart';

class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  FavouriteData favouriteData = new FavouriteData();

  @override
  void initState() {
    favouriteData.fetchData(context, refresh: false);
    favouriteData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var currentColor = context.watch<TabsColorCubit>().state.color;
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: "المفضلة",
          color: currentColor,
          back: false,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        padding: EdgeInsets.only(bottom: 100, top: 10),
        color: currentColor,
        child: BlocBuilder<GenericBloc<List<ProductModel>>,
            GenericState<List<ProductModel>>>(
          bloc: favouriteData.favListCubit,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              if (state.data.length>0) {
                return CupertinoScrollbar(
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    itemCount: state.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return BuildProductItem(
                        color: currentColor,
                        model: state.data[index],
                        onFavTap: () => favouriteData.removeItemFromFav(
                          context,
                          state.data[index].idProvider,
                          index,
                        ),
                      );
                    },
                  ),
                );
              } else{
                return Center(
                  child: MyText(title: "لا يوجد بيانات", color: MyColors.black, size: 12),
                );
              }
            }else{
              return LoadingDialog.showLoadingView();
            }
          },
        ),
      ),
    );
  }
}
