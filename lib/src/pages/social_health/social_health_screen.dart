import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/social_health/data_list/social_health_list_data.dart';

class SocialHealthScreen extends StatelessWidget {
  const SocialHealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(12),
        child: Column(
          children: socialHealthListData
              .asMap()
              .entries
              .map((element) => SocialHealthTile(element: element))
              .toList(),
        ),
      ),
      isGradient: false,
      appBar: AppBarcomponent(
          isGradient: false,
          title: StringConstants.socialHealth,
          isBackAppBar: true,
          isTitleTowLines: false),
    );
  }
}
