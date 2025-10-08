import 'package:dio/dio.dart';
import 'package:quraankareem/core/networking/api_constants.dart';
import 'package:quraankareem/features/home/data/models/ayaat_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;


  /// 🕌 Get the list of Surahs (Ayaat names)
  @GET(ApiConstants.nameOfAyaat)
  Future<AyaatResponse> getAyaatNames();

  // /// 🕋 Get the verses of a specific Surah by its number
  // @GET(ApiConstants.contentOfSurah)
  // Future<AyaatResponse> getSurahContent();
}
