import 'package:flutter/material.dart';
import 'presentation/pages/home_page.dart';
import 'presentation/pages/info_page.dart';
import 'presentation/pages/faq_page.dart';
import 'core/navigation/navigation_service.dart';
import 'presentation/controllers/home_controller.dart';
import 'domain/usecases/navigate_to_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationService = NavigationService();
    final navigateToPageUseCase = NavigateToPageUseCase(navigationService);
    final homeController = HomeController(navigateToPageUseCase);

    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      title: 'Emergency Response Mobile Apps COVID-19',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(homeController),
        '/info': (context) => InfoPage(homeController),
        '/faq': (context) => FAQPage(homeController),
      },
    );
  }
}
