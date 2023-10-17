import 'package:softtech_test/src/app/app_export.dart';

class DoctorNameAndRatingComponentDoctorDetailScreen extends StatelessWidget {
  const DoctorNameAndRatingComponentDoctorDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DoctorDetailHeadingOne(
              fontFamily: FontConstantc.gilroySemiBold,
              headingColor: !getThemeStateIsLight()
                  ? darken(getThemeColor(context), 0.35)
                  : ColorConstants.white,
              heading: 'Dr. Rachel McAdams'),
          Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(AssetsConstants.ratingIcon,
                  height: 13, width: 14)),
          Text('(4.3)',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  height: 1, fontFamily: FontConstantc.gilroySemiBold))
        ]);
  }
}
