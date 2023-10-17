import 'package:softtech_test/src/app/app_export.dart';

class AttachFilesBottomSheet extends StatelessWidget {
  const AttachFilesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Medical Record",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: darken(getThemeColor(context), 0.3),
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SvgPicture.asset("assets/icon/cross.svg"),
              ],
            ),
            const Divider(color: ColorConstants.greyText),
            const BottomSheetFields(),
            const BottomSheetFilesIcons(),
          ],
        ),
      ),
    );
  }
}
