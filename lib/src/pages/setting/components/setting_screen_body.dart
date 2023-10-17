import 'package:softtech_test/src/app/app_export.dart';

class SettingScreenBody extends StatelessWidget {
  const SettingScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextComponentSettingMainHeading(
                text: StringConstants.generalSettings),
            AppTileComponent(
              isExpandable: false,
              onTap: () => NavigationUtil.push(
                  context, RouteConstants.changeLanguageRoute),
              image: AssetsConstants.chnageLanguageIcon,
              test: StringConstants.changeLanguage,
            ),
            AppTileComponent(
              isExpandable: false,
              onTap: () => NavigationUtil.push(
                  context, RouteConstants.changeLocationRoute),
              image: AssetsConstants.changeLocationIcon,
              test: StringConstants.changeLocation,
            ),
            TextComponentSettingMainHeading(
                text: StringConstants.otherSettings),
            ThemeSwitchApp(
                value: false,
                image: AssetsConstants.notificationIcon,
                onChnage: (value) async {},
                text: StringConstants.notification),
            ThemeSwitchApp(
                value: false,
                image: AssetsConstants.newsLetterIcon,
                onChnage: (value) async {},
                text: StringConstants.newsletters),
            ThemeSwitchApp(
                value: false,
                image: AssetsConstants.offersAndPromotionIcon,
                onChnage: (value) async {},
                text: StringConstants.offersAndPromotions),
            ThemeSwitchApp(
                value: !getThemeStateIsLight(),
                image: AssetsConstants.lightDarkIcon,
                onChnage: (value) async {
                  switchThemeApp();
                  BlocProvider.of<IsGradientBackgroundCubit>(context)
                      .updateStateDarkLight(value: value);
                },
                text: StringConstants.themeDarkLight),
            const AppColorPicker(),
          ],
        ),
      ),
    );
  }
}
