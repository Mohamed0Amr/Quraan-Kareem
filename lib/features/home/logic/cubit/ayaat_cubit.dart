import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quraankareem/core/networking/api_result.dart';
import 'package:quraankareem/features/home/data/models/ayaat_request.dart';
import 'package:quraankareem/features/home/data/repos/ayaat_repo.dart';
import 'package:quraankareem/features/home/logic/cubit/ayaat_state.dart';

class AyaatCubit extends Cubit<AyaatState> {
  final AyaatRepo _ayaatRepo;

  AyaatCubit(this._ayaatRepo) : super(const AyaatState.initial());

  void emitAyaatState(AyaatRequest ayaatRequest) async {
    emit(const AyaatState.loading());
    final response = await _ayaatRepo.getSower();
    response.when(
      success: (data) {
        emit(AyaatState.success(data));
      },
      failure: (error){
        emit(AyaatState.error(error: error.apiErrorModel.data ?? "Something went wrong"));
      }
    );
  }
}
