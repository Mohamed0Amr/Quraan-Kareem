// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayaat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AyaatResponse _$AyaatResponseFromJson(Map<String, dynamic> json) =>
    AyaatResponse(
      code: (json['code'] as num?)?.toInt(),
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : AyaatData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AyaatResponseToJson(AyaatResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

AyaatData _$AyaatDataFromJson(Map<String, dynamic> json) => AyaatData(
  ayahs: json['ayahs'] == null
      ? null
      : AyaatCount.fromJson(json['ayahs'] as Map<String, dynamic>),
  surahs: json['surahs'] == null
      ? null
      : Surahs.fromJson(json['surahs'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AyaatDataToJson(AyaatData instance) => <String, dynamic>{
  'ayahs': instance.ayahs,
  'surahs': instance.surahs,
};

AyaatCount _$AyaatCountFromJson(Map<String, dynamic> json) =>
    AyaatCount(count: (json['count'] as num?)?.toInt());

Map<String, dynamic> _$AyaatCountToJson(AyaatCount instance) =>
    <String, dynamic>{'count': instance.count};

Surahs _$SurahsFromJson(Map<String, dynamic> json) => Surahs(
  count: (json['count'] as num?)?.toInt(),
  references: (json['references'] as List<dynamic>?)
      ?.map((e) => SurahReference.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SurahsToJson(Surahs instance) => <String, dynamic>{
  'count': instance.count,
  'references': instance.references,
};

SurahReference _$SurahReferenceFromJson(Map<String, dynamic> json) =>
    SurahReference(
      number: (json['number'] as num?)?.toInt(),
      name: json['name'] as String?,
      englishName: json['englishName'] as String?,
      revelationType: json['revelationType'] as String?,
    );

Map<String, dynamic> _$SurahReferenceToJson(SurahReference instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'englishName': instance.englishName,
      'revelationType': instance.revelationType,
    };
