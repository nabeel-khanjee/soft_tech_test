import 'package:softtech_test/src/app/app_export.dart';

class TopDatedDoctorsWidget extends StatelessWidget {
  const TopDatedDoctorsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<TopRatedDoctorData> topRateDoctor = [
      TopRatedDoctorData(
          spec: StringConstants.heartSpecialist,
          rating: StringConstants.fourPointThree,
          docName: StringConstants.drRachelBrown,
          docImage: AssetsConstants.doctorImageHomePage),
      TopRatedDoctorData(
          spec: StringConstants.heartSpecialist,
          rating: StringConstants.fourPointThree,
          docName: StringConstants.drRachelBrown,
          docImage: AssetsConstants.doctorImageHomePage),
      TopRatedDoctorData(
          spec: StringConstants.heartSpecialist,
          rating: StringConstants.fourPointThree,
          docName: StringConstants.drRachelBrown,
          docImage: AssetsConstants.doctorImageHomePage),
    ];

    return Column(
      children: [
        HomeWidgetHeading(
            title: StringConstants.topDoctors,
            isSeeAll: true,
            bottonPadding: 10,
            topPadding: 22),
        DropDownComponentProfile(
          bgColor: !getThemeStateIsLight()
              ? (lighten(getThemeColor(context), 0.35))
              : darken(getThemeColor(context), 0.3),
          items: const [
            'Internal medicine',
            'Pediatrics',
            'Family medicine',
            'Neurology',
            'Orthopedics',
            'Urology',
            'Obstetrics and gynaecology',
            'Psychiatry',
            'General practitioner',
            'Ophthalmology',
            'Dermatology',
            'Pathology',
            'Gastroenterology',
            'Emergency medicine',
            'General surgery',
            'Otorhinolaryngology',
            'Cardiology',
            'Urologist',
            'Anesthesiology',
            'Neurosurgery',
            'Oncology',
            'Pediatrician',
            'Rheumatology',
            'Surgeon',
          ],
          selectedItem: (p0) {},
          hintText: 'Specialist',
          onDropdownFieldTap: () {},
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: topRateDoctor
                .asMap()
                .entries
                .map((element) => TopRatedDoctorHomeCard(element: element))
                .toList(),
          ),
        )
      ],
    );
  }
}
