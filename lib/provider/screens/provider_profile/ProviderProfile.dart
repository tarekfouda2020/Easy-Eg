part of 'ProviderProfileImports.dart';


class ProviderProfile extends StatefulWidget {
  final Color color;

  const ProviderProfile({required this.color});
  @override
  _ProviderProfileState createState() => _ProviderProfileState();
}

class _ProviderProfileState extends State<ProviderProfile>{

  final ProviderProfileData profileData = new ProviderProfileData();


  @override
  void initState() {
    profileData.initProfileData(context);
    profileData.fetchSelectedCats(context,refresh: false);
    profileData.fetchSelectedCats(context);
    super.initState();
  }

  @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: PreferredSize(
         child: DefaultAppBar(title: "الملف الشخصي",color: widget.color,),
         preferredSize: Size.fromHeight(60),
       ),

       body: LinearContainer(
         color: widget.color,
         child: ListView(
           padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
           children: [
             BuildProfileImage(profileData: profileData,),
             BuildEditForm(profileData: profileData),
             BuildProfileButtons(color: widget.color)
           ],
         ),
       ),

     );
   }
}

