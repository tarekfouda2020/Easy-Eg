part of 'FavouriteWidgetsImports.dart';

class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  FavouriteData favouriteData = new FavouriteData();


  @override
  Widget build(BuildContext context) {
    var currentColor = context.watch<TabsColorCubit>().state.color;
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: tr(context,"fav"),
          color: currentColor,
          back: false,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        padding: EdgeInsets.only(bottom: 120),
        color: currentColor,
        child: GenericListView<ProductModel>(
          type: ListViewType.separated,
          padding: EdgeInsets.symmetric(horizontal: 15),
          onRefresh: favouriteData.fetchData,
          emptyStr: tr(context,"noData"),
          cubit: favouriteData.favListCubit,
          refreshBg: currentColor.withOpacity(.5),
          params: [context],
          itemBuilder: (context,index,item){
            return BuildProductItem(
              color: currentColor,
              model: item,
              onFavTap: () => favouriteData.removeItemFromFav(
                context,
                item.idProvider,
                index,
              ),
            );
          },
        ),
        // child: BlocBuilder<GenericBloc<List<ProductModel>>,
        //     GenericState<List<ProductModel>>>(
        //   bloc: favouriteData.favListCubit,
        //   builder: (context, state) {
        //     if (state is GenericUpdateState) {
        //       if (state.data.length>0) {
        //         return CupertinoScrollbar(
        //           child: ListView.builder(
        //             padding: EdgeInsets.symmetric(horizontal: 15),
        //             itemCount: state.data.length,
        //             itemBuilder: (BuildContext context, int index) {

        //             },
        //           ),
        //         );
        //       } else{
        //         return Center(
        //           child: MyText(title:tr(context,"noData"), color: MyColors.black, size: 12),
        //         );
        //       }
        //     }else{
        //       return LoadingDialog.showLoadingView(color: currentColor);
        //     }
        //   },
        // ),
      ),
    );
  }
}
