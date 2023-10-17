import 'package:softtech_test/src/app/app_export.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IsGradientBackGround(
        body: Column(
          children: [
            const UserProfileComponent(),
            Container(
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                  color: ColorConstants.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(children: [
                AppTileComponent(
                  isExpandable: false,
                  test: StringConstants.demographicProfile,
                  image: AssetsConstants.demographicProfile,
                  onTap: () {
                    NavigationUtil.push(
                        context, RouteConstants.demographicRoute);
                  },
                ),
                const ExpansionPanelListComponent(),
                AppTileComponent(
                  isExpandable: false,
                  test: StringConstants.familyHealthProfile,
                  image: AssetsConstants.familyHealthProfile,
                  onTap: () {
                    NavigationUtil.push(
                        context, RouteConstants.familyHealthProfileRoute);
                  },
                ),
              ]),
            ),
          ],
        ),
        isBackAppBar: false,
        appbarText: StringConstants.profile);
  }
}
