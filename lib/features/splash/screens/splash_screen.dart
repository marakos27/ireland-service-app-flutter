import 'package:flutter/material.dart';
import 'package:ireland_service_app/supabase_client.dart'; // Чтобы получить доступ к supabase

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Запускаем редирект после отрисовки первого кадра
    WidgetsBinding.instance.addPostFrameCallback((_) => _redirect());
  }

  Future<void> _redirect() async {
    // Ждем небольшую задержку, чтобы пользователь успел увидеть сплеш-скрин
    await Future.delayed(const Duration(milliseconds: 500));

    final session = supabase.auth.currentSession;

    if (!mounted) return;

    if (session != null) {
      // Если пользователь залогинен, отправляем его на главный экран
      // Пока у нас его нет, отправляем на заглушку
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Home Page"))),
        ),
      );
    } else {
      // Если не залогинен, отправляем на экран входа
      Navigator.of(context).pushReplacementNamed('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
