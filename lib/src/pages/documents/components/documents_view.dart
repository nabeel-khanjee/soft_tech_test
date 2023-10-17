import 'package:softtech_test/src/app/app_export.dart';

class DocumentsView extends StatelessWidget {
  const DocumentsView({
    super.key,
    required this.title,
    required this.iconUrl,
  });

  final String title;
  final String iconUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        color: getThemeColor(context),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                color: ColorConstants.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Image.asset(
                  iconUrl,
                  height: 28,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  "14 Sep 2019 1.6 MB",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: ColorConstants.white.withOpacity(0.6),
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.downloading,
              color: ColorConstants.white.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}
