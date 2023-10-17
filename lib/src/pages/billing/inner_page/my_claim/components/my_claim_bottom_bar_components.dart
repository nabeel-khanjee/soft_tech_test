import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/billing/components/bottom_nav_bar_page_widget.dart';

class MyClaimSbottomBarComponent extends StatelessWidget {
  const MyClaimSbottomBarComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        foregroundDecoration: const BoxDecoration(color: Colors.transparent),
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        alignment: Alignment.topCenter,
        height: 90,
        padding: const EdgeInsets.all(10),
        child: const BottomNavBarPageWidget());
  }
}
