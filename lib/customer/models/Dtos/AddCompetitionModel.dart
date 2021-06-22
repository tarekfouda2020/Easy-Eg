class AddCompetitionModel{
  String? name;
  String? phone;
  String? location;
  String? lang;
  bool? followFacebook;
  bool? followYoutupe;

  AddCompetitionModel(
      {this.name,
      this.phone,
      this.location,
      this.followFacebook,
      this.followYoutupe,
      });
  Map<String,dynamic> toJson()=>{
    "Name":name,
    "Phone":phone,
    "Location":location,
    "FollowFacebook":followFacebook,
    "FollowYoutupe":followYoutupe,
    "lang":lang,
  };
}