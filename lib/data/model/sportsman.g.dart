// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sportsman.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sportsman _$$_SportsmanFromJson(Map<String, dynamic> json) => _$_Sportsman(
      id: json['id'] as int,
      login: json['login'] as String,
      password: json['password'] as String,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      patronymic: json['patronymic'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      birthday: json['birthday'] as String?,
      skills:
          (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
      rating: (json['rating'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(DateTime.parse(k), (e as num).toDouble()),
      ),
      streakTrainings: json['streakTrainings'] as int?,
      numberOfViewsResume: json['numberOfViewsResume'] as int?,
      numberOfTask: json['numberOfTask'] as int?,
      numberOfSolutionsForYear:
          (json['numberOfSolutionsForYear'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(DateTime.parse(k), e as int),
      ),
      passportSeries: json['passportSeries'] as String?,
      passportNumber: json['passportNumber'] as String?,
      passportIssuedBy: json['passportIssuedBy'] as String?,
      passportIssuedDate: json['passportIssuedDate'] as String?,
      passportDivisionCode: json['passportDivisionCode'] as String?,
      registrationAddress: json['registrationAddress'] as String?,
      actualAddress: json['actualAddress'] as String?,
      education: json['education'] as String?,
      placeOfStudy: json['placeOfStudy'] as String?,
      specialty: json['specialty'] as String?,
      yearOfGraduation: json['yearOfGraduation'] as String?,
      course: json['course'] as int?,
      placeOfWork: json['placeOfWork'] as String?,
      numberOfSNILS: json['numberOfSNILS'] as String?,
      numberOfINN: json['numberOfINN'] as String?,
      numberOfPOLIS: json['numberOfPOLIS'] as String?,
      numberOfInsurance: json['numberOfInsurance'] as String?,
      photoPassportMain: json['photoPassportMain'] as String?,
      photoPassportRegistration: json['photoPassportRegistration'] as String?,
      photoSNILS: json['photoSNILS'] as String?,
      photoINN: json['photoINN'] as String?,
      photoPOLIS: json['photoPOLIS'] as String?,
      photoInsurance: json['photoInsurance'] as String?,
    );

Map<String, dynamic> _$$_SportsmanToJson(_$_Sportsman instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'password': instance.password,
      'name': instance.name,
      'surname': instance.surname,
      'patronymic': instance.patronymic,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'birthday': instance.birthday,
      'skills': instance.skills,
      'rating':
          instance.rating?.map((k, e) => MapEntry(k.toIso8601String(), e)),
      'streakTrainings': instance.streakTrainings,
      'numberOfViewsResume': instance.numberOfViewsResume,
      'numberOfTask': instance.numberOfTask,
      'numberOfSolutionsForYear': instance.numberOfSolutionsForYear
          ?.map((k, e) => MapEntry(k.toIso8601String(), e)),
      'passportSeries': instance.passportSeries,
      'passportNumber': instance.passportNumber,
      'passportIssuedBy': instance.passportIssuedBy,
      'passportIssuedDate': instance.passportIssuedDate,
      'passportDivisionCode': instance.passportDivisionCode,
      'registrationAddress': instance.registrationAddress,
      'actualAddress': instance.actualAddress,
      'education': instance.education,
      'placeOfStudy': instance.placeOfStudy,
      'specialty': instance.specialty,
      'yearOfGraduation': instance.yearOfGraduation,
      'course': instance.course,
      'placeOfWork': instance.placeOfWork,
      'numberOfSNILS': instance.numberOfSNILS,
      'numberOfINN': instance.numberOfINN,
      'numberOfPOLIS': instance.numberOfPOLIS,
      'numberOfInsurance': instance.numberOfInsurance,
      'photoPassportMain': instance.photoPassportMain,
      'photoPassportRegistration': instance.photoPassportRegistration,
      'photoSNILS': instance.photoSNILS,
      'photoINN': instance.photoINN,
      'photoPOLIS': instance.photoPOLIS,
      'photoInsurance': instance.photoInsurance,
    };
