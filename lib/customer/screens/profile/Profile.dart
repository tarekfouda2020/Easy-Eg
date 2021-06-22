part of 'ProfileImports.dart';

class Profile extends StatefulWidget {
  final Color color;

  const Profile({required this.color});
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile>{

   ProfileData profileData = new ProfileData();


   @override
  void initState() {
     profileData.setInitUserData(context);
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
        child: Column(
          children: [
            Flexible(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                children: [
                  BuildProfileImage(profileData: profileData,),
                  BuildEditForm(profileData: profileData),
                ],
              ),
            ),
            BuildProfileButtons(color: widget.color,profileData: profileData,)
          ],
        ),
      ),

    );
  }
}

