part of 'ProfileWidgetImports.dart';

class BuildProfileImage extends StatelessWidget {
  final ProfileData profileData;

  const BuildProfileImage({required this.profileData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: 120,
      height: 120,
      child: Stack(
        alignment: Alignment.center,
        children: [
          BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
            bloc: profileData.imageCubit,
            builder: (context, state) {
              if (state.data != null) {
                return Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: FileImage(state.data!),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                );
              }
              return CachedImage(
                url:
                    "https://images.unsplash.com/photo-1531746790731-6c087fecd65a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1595&q=80",
                width: 100,
                height: 100,
                borderRadius: BorderRadius.circular(15),
              );
            },
          ),
          Positioned(
            bottom: 5,
            right: MediaQuery.of(context).size.width * .3,
            child: InkWell(
              onTap: () => profileData.setProfileImage(),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: MyColors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: MyColors.black)
                ),
                child: Icon(
                  Icons.camera_alt,
                  size: 17,
                  color: MyColors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
