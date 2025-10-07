import 'package:quraankareem/core/networking/api_error_handler.dart';
import 'package:quraankareem/core/networking/api_result.dart';
import 'package:quraankareem/core/networking/api_service.dart';
import 'package:quraankareem/features/home/data/models/ayaat_request.dart';
import 'package:quraankareem/features/home/data/models/ayaat_response.dart';

class AyaatRepo {
  final ApiService _apiService;

  AyaatRepo(this._apiService);

  Future<ApiResult<AyaatResponse>> getSower() async {
    try {
      final response = await _apiService.getAyaatNames();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
