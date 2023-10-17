import 'package:softtech_test/src/app/app_export.dart';

class HomePageListView extends StatelessWidget {
  const HomePageListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) =>
          ListTileComponentHomeScreen(index: index),
    );
  }
}
