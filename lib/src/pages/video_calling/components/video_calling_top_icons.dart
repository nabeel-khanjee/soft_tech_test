import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/video_calling/bottom_sheet/attach_files_bottom_sheet.dart';

class VideoCallingTopIcons extends StatelessWidget {
  const VideoCallingTopIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 45,
      decoration: BoxDecoration(
        color: ColorConstants.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          videoIcon("assets/icon/cross.svg"),
          videoIcon("assets/icon/ellipse.svg"),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (_) {
                  return const AttachFilesBottomSheet();
                },
              );
            },
            child: videoIcon("assets/icon/file.svg"),
          ),
          videoIcon("assets/icon/add_person.svg"),
          videoIcon("assets/icon/pencil.svg"),
        ],
      ),
    );
  }

  Widget videoIcon(String imageUrl) {
    return Container(
      height: 32,
      width: 32,
      decoration: const BoxDecoration(
        color: ColorConstants.white,
        shape: BoxShape.circle,
      ),
      child: Center(child: SvgPicture.asset(imageUrl)),
    );
  }
}
