import 'package:softtech_test/src/app/app_export.dart';

class TransportationAndChildCareScreen extends StatelessWidget {
  const TransportationAndChildCareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Container(),
      isGradient: false,
      appBar: AppBarcomponent(
          isGradient: false,
          title: StringConstants.transportationAndChildCare,
          isBackAppBar: true,
          isTitleTowLines: false),
    );
  }
}
