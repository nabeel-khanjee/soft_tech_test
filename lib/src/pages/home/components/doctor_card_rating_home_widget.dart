import 'package:softtech_test/src/app/app_export.dart';

class DoctorCardRatingHomeWidget extends StatelessWidget {
  const DoctorCardRatingHomeWidget({
    super.key,
    required this.element,
  });

  final MapEntry<int, TopRatedDoctorData> element;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200.withOpacity(0.7)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AssetsConstants.ratingIcon,
                width: 13,
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  element.value.rating,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: ColorConstants.black,
                      fontFamily: FontConstantc.gilroyMedium),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
