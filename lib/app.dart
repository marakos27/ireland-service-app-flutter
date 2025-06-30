import 'package:flutter/material.dart';
import 'package:ireland_service_app/features/auth/screens/login_screen.dart';
import 'package:ireland_service_app/features/splash/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ireland Service App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6A4C93), // Фиолетовый
          primary: const Color(0xFF6A4C93),
          secondary: const Color(0xFF8AC926), // Зеленый
          background: const Color(0xFFF7F7F7), // Светло-серый фон
          surface: Colors.white, // Белые карточки
        ),
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
      ),
      initialRoute: '/', // Стартовый маршрут
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        // Добавим позже
        // '/home': (context) => const HomeScreen(),
      },
    );
  }
}
