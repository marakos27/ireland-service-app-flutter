import 'package:flutter/widgets.dart';
import 'package:ireland_service_app/app.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://ijdseersqcvmqbjrzdwn.supabase.c',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlqZHNlZXJzcWN2bXFianJ6ZHduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTAwMjUxMDIsImV4cCI6MjA2NTYwMTEwMn0.ETznZ5pw-pGxuiJBrDnOgzKTu_KhckLfrcyhrRn48XM',
  );
  await SentryFlutter.init((options) {
    options.dsn =
        'https://aad1e2c1a90aa105ab4181bfe22b60c0@o4509544383840256.ingest.de.sentry.io/4509553365352528';
    options.tracesSampleRate = 1.0;
  }, appRunner: () => runApp(const MyApp()));
}
