import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'supabase_provider.g.dart';

const String _url = "https://qgirxkxkuvqhuazkpayt.supabase.co";
const String _key =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFnaXJ4a3hrdXZxaHVhemtwYXl0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk3MzgwMTcsImV4cCI6MjAzNTMxNDAxN30.707Kiswyy-XeQstN6iKecXdkoxkrEXOpORKul7Zn9TY";

Future<void> initSupabase() async {
  await Supabase.initialize(
    url: _url,
    anonKey: _key,
  );
}

@Riverpod(keepAlive: true)
Supabase supabase(SupabaseRef ref) {
  return Supabase.instance;
}
