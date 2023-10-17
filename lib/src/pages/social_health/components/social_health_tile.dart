import 'package:softtech_test/src/app/app_export.dart';

class SocialHealthTile extends StatelessWidget {
  const SocialHealthTile({
    super.key,
    required this.element,
  });
  final MapEntry<int, SocialHealthListData> element;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        NavigationUtil.push(context, element.value.route, args: element);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: lighten(getThemeColor(context), 0.15)),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: ColorConstants.white,
                  borderRadius: BorderRadius.circular(15)),
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              width: 48.1,
              height: 48.1,
              child: Image.asset(
                element.value.icon,
                width: 26.1,
                height: 26.1,
              ),
            ),
            Expanded(child: Text(element.value.title)),
            Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: element.value.isCompleted
                        ? Colors.transparent
                        : ColorConstants.white,
                  ),
                  color: element.value.isCompleted
                      ? ColorConstants.white
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(100)),
              margin: const EdgeInsets.all(8),
              child: Center(
                  child: Icon(
                Icons.check,
                color: element.value.isCompleted
                    ? Theme.of(context).scaffoldBackgroundColor
                    : ColorConstants.white,
                size: 12,
              )),
            )
          ],
        ),
      ),
    );
  }
}
