import 'package:softtech_test/src/app/app_export.dart';

class TopRatedDoctorFrontElementGradient extends StatelessWidget {
  const TopRatedDoctorFrontElementGradient({
    super.key,
    required this.element,
  });

  final MapEntry<int, TopRatedDoctorData> element;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 303,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                ColorConstants.white,
                Colors.transparent,
                Colors.transparent
              ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DoctorCardRatingHomeWidget(element: element),
          const DoctorDetailAndBookNowWidget()
        ],
      ),
    );
  }
}
