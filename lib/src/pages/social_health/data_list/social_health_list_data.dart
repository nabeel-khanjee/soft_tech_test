import 'package:softtech_test/src/app/app_export.dart';

List<SocialHealthListData> socialHealthListData = [
  SocialHealthListData(
      questions: [
        Question(
            isSelected: false,
            question: StringConstants.whatIsYourHousingSituationToday,
            options: [
              Option(option: StringConstants.iDoNotHaveHousing),
              Option(
                  option: StringConstants
                      .iHaveHousingTodayButIAmWorriedAboutLosingHousingInTheFuture),
              Option(option: StringConstants.iHaveHousing)
            ]),
        Question(
            isSelected: false,
            question: StringConstants
                .thinkAboutThePlaceYouLiveDoYouHaveProblemsWithAnyOfTheFollowing,
            options: [
              Option(option: StringConstants.bugInfestation),
              Option(option: StringConstants.mold),
              Option(option: StringConstants.leadPaintOrPipes),
              Option(option: StringConstants.inadequateHeat),
              Option(option: StringConstants.ovenOrStoveNotWorking),
              Option(option: StringConstants.noOrNotWorkingSmokeDetectors),
              Option(option: StringConstants.waterLeaks),
              Option(option: StringConstants.noneOfTheAbove),
            ]),
        Question(
            isSelected: false,
            question: StringConstants
                .inThePastTwelveMonthsHasTheElectricGasOilOrWaterCompanyThreatenedToShutOffServicesInYourHome,
            options: [
              Option(option: StringConstants.yes),
              Option(option: StringConstants.no),
              Option(option: StringConstants.alreadyShutOff)
            ]),
      ],
      route: RouteConstants.socailHealthInnerPageRoute,
      icon: AssetsConstants.housingAndUtilitiesIcon,
      isCompleted: true,
      title: StringConstants.housingAndUtilities),
  SocialHealthListData(
      questions: [
        Question(
            isSelected: false,
            question: StringConstants
                .withinThePastTwelveMonthsYouWorriedThatYourFoodWouldRunOutBeforeYouGotMoneyToBuyMore,
            options: [
              Option(option: StringConstants.oftenTrue),
              Option(option: StringConstants.sometimesTrue),
              Option(option: StringConstants.neverTrue)
            ]),
        Question(
            isSelected: false,
            question: StringConstants
                .withinThePastTwelveMonthsTheFoodYouBoughtJustDidntLastAndYouDidntHaveMoneyToGetMore,
            options: [
              Option(option: StringConstants.oftenTrue),
              Option(option: StringConstants.sometimesTrue),
              Option(option: StringConstants.neverTrue)
            ]),
      ],
      route: RouteConstants.socailHealthInnerPageRoute,
      icon: AssetsConstants.foodIcon,
      isCompleted: false,
      title: StringConstants.food),
  SocialHealthListData(
      questions: [
        Question(
            isSelected: false,
            question: StringConstants
                .inThePastTwelveMonthsHasLackOfTransportationKeptYouFromMedicalAppointmentsMeetingsWorkOrFromGettingThingsNeededForDailyLiving,
            options: [
              Option(
                  option: StringConstants
                      .yesItHasKeptMeFromMedicalAppointmentsOrGettingMedications),
              Option(
                  option: StringConstants
                      .yesItHasKeptMeFromNonMedicalMeetingsAppointmentsWorkOrGettingThingsThatINeed),
              Option(option: StringConstants.yes)
            ]),
        Question(
            isSelected: false,
            question: StringConstants
                .doProblemsGettingChildCareMakeItDifficultForYouToWorkOrStudy,
            options: [
              Option(option: StringConstants.yes),
              Option(option: StringConstants.no)
            ]),
      ],
      icon: AssetsConstants.transportationAndChildCareIcon,
      isCompleted: false,
      route: RouteConstants.socailHealthInnerPageRoute,
      title: StringConstants.transportationAndChildCare),
  SocialHealthListData(
      questions: [
        Question(
            isSelected: false,
            question: StringConstants.doYouHaveAHighSchoolDiploma,
            options: [
              Option(option: StringConstants.yes),
              Option(option: StringConstants.no)
            ]),
        Question(
            isSelected: false,
            question: StringConstants.doYouHaveAJob,
            options: [
              Option(option: StringConstants.yes),
              Option(option: StringConstants.no)
            ]),
        Question(
            isSelected: false,
            question: StringConstants.iDontHaveEnoughMoneyToPayMyBills,
            options: [
              Option(option: StringConstants.never),
              Option(option: StringConstants.rarely),
              Option(option: StringConstants.sometimes),
              Option(option: StringConstants.fairlyOften),
              Option(option: StringConstants.frequently),
            ]),
      ],
      route: RouteConstants.socailHealthInnerPageRoute,
      icon: AssetsConstants.educationAndEmploymentAndFinanceIcon,
      isCompleted: true,
      title: StringConstants.educationAndEmploymentAndFinance),
  SocialHealthListData(
      questions: [
        Question(
            isSelected: false,
            question: StringConstants
                .howOftenDoesAnyoneIncludingFamilyPhysicallyHurtYou,
            options: [
              Option(option: StringConstants.never),
              Option(option: StringConstants.rarely),
              Option(option: StringConstants.sometimes),
              Option(option: StringConstants.fairlyOften),
              Option(option: StringConstants.frequently),
            ]),
        Question(
            isSelected: false,
            question: StringConstants
                .howOftenDoesAnyoneIncludingFamilyInsultOrTalkDownToYou,
            options: [
              Option(option: StringConstants.never),
              Option(option: StringConstants.rarely),
              Option(option: StringConstants.sometimes),
              Option(option: StringConstants.fairlyOften),
              Option(option: StringConstants.frequently),
            ]),
        Question(
            isSelected: false,
            question: StringConstants
                .howOftenDoesAnyoneIncludingFamilyThreatenYouWithHarm,
            options: [
              Option(option: StringConstants.never),
              Option(option: StringConstants.rarely),
              Option(option: StringConstants.sometimes),
              Option(option: StringConstants.fairlyOften),
              Option(option: StringConstants.frequently),
            ]),
      ],
      route: RouteConstants.socailHealthInnerPageRoute,
      icon: AssetsConstants.personalSafetyIcon,
      isCompleted: true,
      title: StringConstants.personalSafety),
];
