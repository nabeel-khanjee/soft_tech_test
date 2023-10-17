import 'package:softtech_test/src/app/app_export.dart';

class ChangeLanguageScreen extends StatelessWidget {
  const ChangeLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IsGradientBackGround(
      isBackAppBar: true,
      appbarText: StringConstants.changeLanguage,
      body: const SelectRadioListComponent(
        isLanguage: true,
      ),
    );
  }
}
