import 'package:softtech_test/src/app/app_export.dart';

List<MentalHealthListData> mentalHealthListdata = [
  MentalHealthListData(
      route: RouteConstants.bFTQuestionnaire,
      date: '06/15/2022',
      title: StringConstants.bFTQuestionnaire,
      isIdentified: true),
  MentalHealthListData(
      date: '06/15/2022',
      route: RouteConstants.pHQ9,
      title: StringConstants.pHQ9,
      score: 15,
      color: ColorConstants.redIndicatorColor),
  MentalHealthListData(
      date: '06/15/2022',
      route: RouteConstants.gAD7,
      title: StringConstants.gAD7,
      score: 22,
      color: ColorConstants.greenIndicatorColor),
  MentalHealthListData(
      date: '06/15/2022',
      route: RouteConstants.cageAid,
      title: StringConstants.cageAid,
      score: 00,
      color: ColorConstants.redIndicatorColor),
  MentalHealthListData(
      date: '06/15/2022',
      route: RouteConstants.developmentDisabilityIDD,
      title: StringConstants.developmentDisabilityIDD,
      isIdentified: true),
  MentalHealthListData(
      date: '06/15/2022',
      route: RouteConstants.domesticViolenceChecklist,
      title: StringConstants.domesticViolenceChecklist,
      isIdentified: false),
];
