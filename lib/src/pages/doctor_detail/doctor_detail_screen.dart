import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/doctor_detail/components/bottom_nav_bar_doctor_detail_screen.dart';
import 'package:softtech_test/src/pages/doctor_detail/components/doctor_detail_screen_body.dart';
import 'package:softtech_test/src/pages/doctor_detail/list_data/faq_list_data.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        bottomNavigationBar: const BottomNavBarDoctorDetailScreen(),
        body: DoctorDetailScreenBody(faqList: faqList),
        isGradient: false);
  }
}

class DoctorDetailHeadingTwo extends StatelessWidget {
  const DoctorDetailHeadingTwo({
    super.key,
    required this.text,
    required this.color,
  });
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: color),
    );
  }
}

class DoctorDetailHeadingOne extends StatelessWidget {
  const DoctorDetailHeadingOne({
    super.key,
    required this.heading,
    required this.headingColor,
    required this.fontFamily,
  });
  final String heading;
  final Color headingColor;
  final String fontFamily;
  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context)
          .textTheme
          .labelLarge!
          .copyWith(color: headingColor, height: 1, fontFamily: fontFamily),
    );
  }
}
