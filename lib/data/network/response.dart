import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase/supabase.dart';

part 'response.freezed.dart';

@freezed
class Response<T> with _$Response {
  const Response._();

  const factory Response.success(T data) = Success;
  const factory Response.failure(String errorMessage) = Failure;

  static void _doNothing(String errorMessage) {}

  void handle({required void Function(T data) onSuccess, void Function(String errorMessage) onFailure = _doNothing}) {
    final response = this;
    if (response is Success<T>) {
      onSuccess(response.data);
    } else if (response is Failure<T>) {
      onFailure(response.errorMessage);
    }
  }

  factory Response.buildFrom(PostgrestResponse<dynamic> res, T Function() dataBuilder) {
    if (res.status == 200) {
      return Response.success(dataBuilder());
    } else {
      return Response.failure(res.error?.message ?? "Unknown error");
    }
  }

  factory Response.from(PostgrestResponse<dynamic> res) {
    if (res.status == 200) {
      return Response.success(res.data as T);
    } else {
      return Response.failure(res.error?.message ?? "Unknown error");
    }
  }
}
