import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/family_health_profile/family_health_inner_pages/family_members/family_members_screen.dart';
import 'package:softtech_test/src/pages/family_health_profile/family_health_inner_pages/health_profile/health_profile_screen.dart';

class FamilyHealthProfileScreen extends StatefulWidget {
  const FamilyHealthProfileScreen({super.key});

  @override
  State<FamilyHealthProfileScreen> createState() =>
      _FamilyHealthProfileScreenState();
}

class _FamilyHealthProfileScreenState extends State<FamilyHealthProfileScreen> {
  int currentPage = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              ProfileIndicatorsWidget(
                children: [
                  IndicatorWidget(
                    onTap: () {
                      pageController.jumpToPage(0);
                      setState(() => currentPage = 0);
                    },
                    isSelected: currentPage == 0,
                    title: 'Family Members',
                  ),
                  IndicatorWidget(
                    onTap: () {
                      pageController.jumpToPage(2);
                      setState(() => currentPage = 2);
                    },
                    isSelected: currentPage == 2,
                    title: StringConstants.healthProfile,
                  ),
                ],
              ),
              Expanded(
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: pageController,
                  children: const [FamilyHealthScreen(), HealthProfileScreen()],
                ),
              )
            ],
          ),
        ),
        appBar: AppBarcomponent(
            isGradient: false,
            title: StringConstants.familyHealthProfile,
            isBackAppBar: true,
            isTitleTowLines: false),
        isGradient: false);
  }
}
