class AddCompetitionModel{
  String? name;
  String? phone;
  String? location;
  String? lang;
  int? governId;
  bool? followFacebook;
  bool? followYoutube;

  AddCompetitionModel(
      {this.name,
      this.phone,
      this.location,
      this.followFacebook,
      this.followYoutube,
        this.lang,
        this.governId
      });
  Map<String,dynamic> toJson()=>{
    "Name":name,
    "Phone":phone,
    "Location":location,
    "FollowFacebook":followFacebook,
    "FollowYoutupe":followYoutube,
    "lang":lang,
  };
}