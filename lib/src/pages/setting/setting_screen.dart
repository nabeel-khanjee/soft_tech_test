import 'package:softtech_test/src/app/app_export.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IsGradientBackGround(
      appbarText: StringConstants.settings,
      isBackAppBar: false,
      body: const SettingScreenBody(),
    );
  }
}
