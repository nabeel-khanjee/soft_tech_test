import 'package:softtech_test/src/app/app_export.dart';

class BottomSheetFilesIcons extends StatelessWidget {
  const BottomSheetFilesIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            fileIcon("assets/icon/file_png.png"),
            fileIcon("assets/icon/file_jpg.png"),
            fileIcon("assets/icon/file_ppt.png"),
            fileIcon("assets/icon/file_png.png"),
          ],
        ),
        const SizedBox(height: 20),
        submitButton(context),
      ],
    );
  }

  Widget fileIcon(String fileUrl) {
    return Container(
      height: 74,
      width: 74,
      decoration: BoxDecoration(
        border: Border.all(color: ColorConstants.greyText),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(
        child: Image.asset(
          fileUrl,
          height: 48,
          width: 48,
        ),
      ),
    );
  }

  Widget submitButton(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Submit",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
