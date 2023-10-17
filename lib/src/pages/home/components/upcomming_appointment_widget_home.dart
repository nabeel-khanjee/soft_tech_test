import 'package:softtech_test/src/app/app_export.dart';

class UpcommingAppointmentWidgetHome extends StatelessWidget {
  const UpcommingAppointmentWidgetHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<UpCommingAppointmentData> upcommingAppointment = [
      UpCommingAppointmentData(
          date: StringConstants.eightMar0920am,
          title: StringConstants.videoConsultation,
          dec: StringConstants.waitingForCall,
          decColor: ColorConstants.yellowGolden,
          titleColor: ColorConstants.white,
          docName: StringConstants.drRachelBrown,
          docImage: AssetsConstants.upcommingAppointmentCardDoctorImage),
      UpCommingAppointmentData(
          date: StringConstants.eightMar0920am,
          title: StringConstants.audioConsultation,
          dec: StringConstants.waitingForCall,
          decColor: ColorConstants.green,
          titleColor: ColorConstants.white,
          docName: StringConstants.drRachelBrown,
          docImage: AssetsConstants.upcommingAppointmentCardDoctorImage),
      UpCommingAppointmentData(
          date: StringConstants.eightMar0920am,
          title: StringConstants.diagnosticTests,
          dec: StringConstants.diagnosticTests,
          decColor:
              getThemeColor(navigationService!.navigatorKey.currentContext!),
          titleColor: Theme.of(navigationService!.navigatorKey.currentContext!)
              .scaffoldBackgroundColor,
          docName: StringConstants.drRachelBrown,
          docImage: AssetsConstants.upcommingAppointmentCardDoctorImage)
    ];
    return Column(children: [
      HomeWidgetHeading(
        title: StringConstants.upcomingAppointments,
        isSeeAll: false,
        bottonPadding: 10,
        topPadding: 22,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: upcommingAppointment
              .asMap()
              .entries
              .map((element) => UpcommingAppointmentHomeCard(element: element))
              .toList(),
        ),
      )
    ]);
  }
}
