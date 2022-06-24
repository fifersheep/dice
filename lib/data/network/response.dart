import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase/supabase.dart';

part 'response.freezed.dart';

@freezed
class Response<T> with _$Response {
  const factory Response.success(T data) = Success;
  const factory Response.failure(String errorMessage) = Failure;

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
