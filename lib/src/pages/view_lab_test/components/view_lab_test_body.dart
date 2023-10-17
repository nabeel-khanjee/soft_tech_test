import 'package:softtech_test/src/app/app_export.dart';

class ViewLabTestBody extends StatelessWidget {
  const ViewLabTestBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: darken(getThemeColor(context), 0.28),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Order ID #32689"),
                Text("3 Lab Tests"),
              ],
            ),
            const Divider(color: ColorConstants.greyText),
            viewTest("Test 01", context),
            viewTest("Test 02", context),
            viewTest("Test 03", context),
            viewTest("Test 04", context),
            viewTest("Test 05", context),
            viewTest("Test 06", context),
            const SizedBox(height: 8),
            const Text(
              "View Receipt",
              style: TextStyle(color: ColorConstants.yellowIndicatorColor),
            ),
          ],
        ),
      ),
    );
  }

  Widget viewTest(String title, BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Container(
                height: 28,
                width: 80,
                decoration: BoxDecoration(
                  color: darken(getThemeColor(context), 0.35),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "assets/icon/eye_view.svg",
                      colorFilter: const ColorFilter.mode(
                          ColorConstants.white, BlendMode.srcIn),
                    ),
                    const Text("View"),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(color: ColorConstants.greyText),
      ],
    );
  }
}
