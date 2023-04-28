import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sportsman.freezed.dart';
part 'sportsman.g.dart';

@freezed
class Sportsman with _$Sportsman {
  @JsonSerializable(explicitToJson: true)
  const factory Sportsman(
      {required int id,
      required String login,
      required String password,
      String? name,
      String? surname,
      String? patronymic,
      String? email,
      String? phone,
      String? photo,
      String? birthday,
      List<String>? skills,
      Map<DateTime, double>? rating,
      int? streakTrainings,
      int? numberOfViewsResume,
      int? numberOfTask,
      Map<DateTime, int>? numberOfSolutionsForYear,
      String? passportSeries,
      String? passportNumber,
      String? passportIssuedBy,
      String? passportIssuedDate,
      String? passportDivisionCode,
      String? registrationAddress,
      String? actualAddress,
      String? education,
      String? placeOfStudy,
      String? specialty,
      String? yearOfGraduation,
      int? course,
      String? placeOfWork,
      String? numberOfSNILS,
      String? numberOfINN,
      String? numberOfPOLIS,
      String? numberOfInsurance,
      String? photoPassportMain,
      String? photoPassportRegistration,
      String? photoSNILS,
      String? photoINN,
      String? photoPOLIS,
      String? photoInsurance}) = _Sportsman;

  factory Sportsman.fromJson(Map<String, dynamic> json) =>
      _$SportsmanFromJson(json);

  static Sportsman fromJsonFactory(Map<String, dynamic> json) =>
      Sportsman.fromJson(json);
}
