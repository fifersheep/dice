import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase/supabase.dart';
// import 'package:flutter/foundation.dart';

part 'response.freezed.dart';

@freezed
class Response<T> with _$Response {
  const factory Response.success(T data) = Success;
  const factory Response.failure(String errorMessage) = Failure;

  factory Response.from(PostgrestResponse<dynamic> res, T Function() dataBuilder) {
    if (res.status == 200) {
      return Response.success(dataBuilder());
    } else {
      return Response.failure(res.error?.message ?? "Unknown error");
    }
  }
}
