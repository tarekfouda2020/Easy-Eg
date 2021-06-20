part of 'SelectUserImports.dart';

class SelectUserData {
  GlobalKey<ScaffoldState> scaffold = new GlobalKey<ScaffoldState>();

  setUserType(BuildContext context,String type){
    var userCubit = context.read<UserCubit>();
    userCubit.state.model.type=type;
    userCubit.onUpdateUserData(userCubit.state.model);
    if (type=="user") {
      AutoRouter.of(context).push(SelectAddressRoute());
    } else{
      AutoRouter.of(context).push(LoginRoute());
    }
  }

}
