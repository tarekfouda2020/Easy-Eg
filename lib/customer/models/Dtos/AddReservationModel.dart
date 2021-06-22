import 'package:json_annotation/json_annotation.dart';

part 'AddReservationModel.g.dart';

@JsonSerializable()
class AddReservationModel {
  String? name;
  String? phone;
  String? date;
  String? providerId;
  String? lang;

  AddReservationModel({
    this.name,
    this.phone,
    this.date,
    this.providerId,
    this.lang,
  });

  factory AddReservationModel.fromJson(Map<String, dynamic> json) =>
      _$AddReservationModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddReservationModelToJson(this);
}
