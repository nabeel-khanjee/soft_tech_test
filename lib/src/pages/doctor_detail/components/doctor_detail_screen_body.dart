import 'package:softtech_test/src/app/app_export.dart';

class DoctorDetailScreenBody extends StatelessWidget {
  const DoctorDetailScreenBody({
    super.key,
    required this.faqList,
  });

  final List<FaqList> faqList;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const DoctorNameAndRatingComponentDoctorDetailScreen(),
                  const SizedBox(height: 20),
                  const DoctorDetailScreenPaymentAndSpecialization(),
                  const SizedBox(height: 10),
                  const ReviewPatientsYearsComponentDoctorDetailScreen(),
                  const SizedBox(height: 20),
                  const AvaliableTimingComponentDoctorDetailScreen(),
                  const SizedBox(height: 20),
                  const AboutDoctorComponentDoctorDetailScreen(),
                  const SizedBox(height: 20),
                  FAQComponentDoctorDetailScreen(faqList: faqList)
                ]),
          ),
        ),
        headerSliverBuilder: (context, innerBoxIsScrolled) =>
            [const AppBarDoctorDetailScreen()]);
  }
}
