import 'package:flutter/widgets.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// Это стандартное демо-приложение Flutter
import 'package:ireland_service_app/app.dart';

Future<void> main() async {
  // Убедимся, что все плагины инициализированы
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    // ВАЖНО: Замените на ваши данные из проекта Supabase
    url: 'https://ijdseersqcvmqbjrzdwn.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlqZHNlZXJzcWN2bXFianJ6ZHduIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTAwMjUxMDIsImV4cCI6MjA2NTYwMTEwMn0.ETznZ5pw-pGxuiJBrDnOgzKTu_KhckLfrcyhrRn48XM',
  );

  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://aad1e2c1a90aa105ab4181bfe22b60c0@o4509544383840256.ingest.de.sentry.io/4509553365352528'; // <-- ВАЖНО: ЗАМЕНИТЕ ЭТО!
      // Установите частоту семплирования для отслеживания производительности.
      // Мы рекомендуем 1.0 в разработке и меньшее значение в продакшене.
      options.tracesSampleRate = 1.0;
    },
    // Запускаем наше приложение внутри Sentry
    appRunner: () =>
        runApp(const MyApp()), // MyApp - это стандартное демо-приложение
  );
}
