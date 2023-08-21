import 'package:provider_app/src/app/app_export.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  navigationService = NavigationService();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ur', 'PK'),
        Locale('ar', 'AE'),
        Locale('es', 'ES'),
        Locale('hi', 'IN'),
      ],
      fallbackLocale: const Locale('en', 'US'),
      path: 'assets/translations',
      child: ChangeNotifierProvider<MyTheme>(
        create: (_) => new MyTheme(),
        child: const App(),
      ),
    ),
  );
}

NavigationService? navigationService;
