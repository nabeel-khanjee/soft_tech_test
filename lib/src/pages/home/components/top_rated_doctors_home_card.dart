import 'package:softtech_test/src/app/app_export.dart';

class TopRatedDoctorHomeCard extends StatelessWidget {
  const TopRatedDoctorHomeCard({
    super.key,
    required this.element,
  });
  final MapEntry<int, TopRatedDoctorData> element;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          NavigationUtil.push(context, RouteConstants.doctorDetailRoute),
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Stack(
          children: [
            TopRatedDoctorBGImage(element: element),
            TopRatedDoctorFrontElementGradient(element: element),
          ],
        ),
      ),
    );
  }
}
