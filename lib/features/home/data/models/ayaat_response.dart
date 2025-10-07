import 'package:json_annotation/json_annotation.dart';

part 'ayaat_response.g.dart';

@JsonSerializable()
class AyaatResponse {
  int? code;
  String? status;
  @JsonKey(name: 'data')
  AyaatData? data;

  AyaatResponse({this.code, this.status, this.data});

  factory AyaatResponse.fromJson(Map<String, dynamic> json) =>
      _$AyaatResponseFromJson(json);
}

@JsonSerializable()
class AyaatData {
  AyaatCount? ayahs;
  Surahs? surahs;

  AyaatData({this.ayahs, this.surahs});

  factory AyaatData.fromJson(Map<String, dynamic> json) =>
      _$AyaatDataFromJson(json);
}

@JsonSerializable()
class AyaatCount {
  int? count;

  AyaatCount({this.count});

  factory AyaatCount.fromJson(Map<String, dynamic> json) =>
      _$AyaatCountFromJson(json);
}

@JsonSerializable()
class Surahs {
  int? count;
  List<SurahReference>? references;

  Surahs({this.count, this.references});

  factory Surahs.fromJson(Map<String, dynamic> json) => _$SurahsFromJson(json);
}

@JsonSerializable()
class SurahReference {
  int? number;
  String? name;
  @JsonKey(name: 'englishName')
  String? englishName;
  @JsonKey(name: 'revelationType')
  String? revelationType;

  SurahReference({
    this.number,
    this.name,
    this.englishName,
    this.revelationType,
  });

  factory SurahReference.fromJson(Map<String, dynamic> json) =>
      _$SurahReferenceFromJson(json);
}
