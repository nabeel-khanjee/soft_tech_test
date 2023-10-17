import 'package:softtech_test/src/app/app_export.dart';

class SocailHealthInnerPage extends StatelessWidget {
  const SocailHealthInnerPage({super.key, required this.element});

  final MapEntry<int, SocialHealthListData> element;
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: SocialHealthInnerPageBody(element: element),
      isGradient: false,
      appBar: AppBarcomponent(
          isGradient: false,
          title: element.value.title,
          isBackAppBar: true,
          isTitleTowLines: false),
    );
  }
}
