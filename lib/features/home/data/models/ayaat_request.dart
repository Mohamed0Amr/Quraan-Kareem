import 'package:json_annotation/json_annotation.dart';
part 'ayaat_request.g.dart';

@JsonSerializable()
class AyaatRequest {
  final int number;
  final String name;
  @JsonKey(name: 'englishName')
  final String engName;
  final String revelationType;

  AyaatRequest({
    required this.number,
    required this.name,
    required this.engName,
    required this.revelationType,
  });

  factory AyaatRequest.fromJson(Map<String, dynamic> json) =>
      _$AyaatRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AyaatRequestToJson(this);
}
