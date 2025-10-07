// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayaat_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AyaatRequest _$AyaatRequestFromJson(Map<String, dynamic> json) => AyaatRequest(
  number: (json['number'] as num).toInt(),
  name: json['name'] as String,
  engName: json['englishName'] as String,
  revelationType: json['revelationType'] as String,
);

Map<String, dynamic> _$AyaatRequestToJson(AyaatRequest instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'englishName': instance.engName,
      'revelationType': instance.revelationType,
    };
