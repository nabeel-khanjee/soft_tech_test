import 'package:softtech_test/src/app/app_export.dart';

class MentalHealthScreen extends StatelessWidget {
  const MentalHealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      bottomNavigationBar: SizedBox(
        height: kToolbarHeight,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: indications
                .asMap()
                .entries
                .map((element) =>
                    MentalHealthIndicatorsComponent(element: element))
                .toList()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
            children: mentalHealthListdata
                .asMap()
                .entries
                .map((mentalHealthListElement) => MentalHealthListElementWidget(
                    mentalHealthListElement: mentalHealthListElement))
                .toList()),
      ),
      isGradient: false,
      appBar: AppBarcomponent(
          isGradient: false,
          title: StringConstants.mentalHealth,
          isBackAppBar: true,
          isTitleTowLines: false),
    );
  }
}
