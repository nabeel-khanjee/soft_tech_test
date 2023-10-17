import 'package:softtech_test/src/app/app_export.dart';

class HealthTrackerReadingWidget extends StatelessWidget {
  final Color forgroundColor;
  final Color borderColor;
  final String readingIcon;
  final String heading;
  final String reading;
  final String subReading;
  final Color headingColor;
  final Color subReadingColor;
  final Color iconColor;
  final double fontSize;

  const HealthTrackerReadingWidget({
    super.key,
    required this.forgroundColor,
    required this.borderColor,
    required this.readingIcon,
    required this.heading,
    required this.reading,
    required this.subReading,
    required this.headingColor,
    required this.subReadingColor,
    required this.iconColor,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 3),
      decoration: BoxDecoration(
        color: forgroundColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                readingIcon,
                color: iconColor,
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Text(
                  heading,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: headingColor,
                      fontWeight: FontWeight.w600,
                      fontSize: fontSize,
                      height: 0),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    reading,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          // color: ColorConstants.white,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 7, left: 5),
                    child: Text(
                      subReading,
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(color: subReadingColor),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
