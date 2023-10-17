import 'package:softtech_test/src/app/app_export.dart';

class BookAppointmentComponent extends StatelessWidget {
  const BookAppointmentComponent({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
          color: darken(getThemeColor(context), 0.25),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: ColorConstants.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: SvgPicture.asset(imageUrl),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: !getThemeStateIsLight()
                      ? (lighten(getThemeColor(context), 0.35))
                      : null,
                ),
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: ColorConstants.white.withOpacity(0.6),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
