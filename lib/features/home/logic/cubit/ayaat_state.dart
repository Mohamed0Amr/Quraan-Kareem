import 'package:freezed_annotation/freezed_annotation.dart';

part 'ayaat_state.freezed.dart';

@freezed
class AyaatState<T> with _$AyaatState<T> {
  const factory AyaatState.initial() = _Initial;
  const factory AyaatState.loading() = Loading;
  const factory AyaatState.success(T data) = Success<T>;
  const factory AyaatState.error({required String error}) = Error;
}
