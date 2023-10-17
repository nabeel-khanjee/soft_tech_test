import 'package:softtech_test/src/app/app_export.dart';

class EmergencyCallButton extends StatelessWidget {
  const EmergencyCallButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: ElevatedButton(
        onPressed: () {
          NavigationUtil.push(context, RouteConstants.emergencyRoute);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorConstants.redIndicatorColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                AssetsConstants.emergencyMainScreenImage,
                width: 35,
              ),
            ),
            Expanded(
              flex: 4,
              child: Center(
                child: Text(
                  "Emergency Call Now",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: ColorConstants.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(flex: 1, child: Container())
          ],
        ),
      ),
    );
  }
}
