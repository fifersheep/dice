import 'package:flutter/foundation.dart';
import 'package:supabase/supabase.dart';

extension SupabaseClientExtensions on SupabaseClient {
  static final instance = SupabaseClient(
    const String.fromEnvironment(kDebugMode ? 'SUPABASE_DEV_URL' : 'SUPABASE_URL'),
    const String.fromEnvironment(kDebugMode ? 'SUPABASE_DEV_ANON_KEY' : 'SUPABASE_ANON_KEY'),
  );
}
