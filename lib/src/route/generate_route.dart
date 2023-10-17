import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/product_detail/product_detail_page.dart';
import 'package:softtech_test/src/pages/products/products_screen.dart';

Route onGenerateRoute(RouteSettings settings) {
  MaterialPageRoute materialRoute(Widget widget) =>
      MaterialPageRoute(builder: (context) => widget);
  switch (settings.name) {
    case RouteConstants.requestDocumentRoute:
      return materialRoute(const RequestDocumentScreen());
    case RouteConstants.billingRoute:
      final BillingArgs args = settings.arguments as BillingArgs;
      return materialRoute(BillingScreen(args: args));

    case RouteConstants.chatRoute:
      return materialRoute(const ChatScreen());

    case RouteConstants.paymentRoute:
      final BillingArgs args = settings.arguments as BillingArgs;
      return materialRoute(PaymentScreen(args: args));

    case RouteConstants.notificationRoute:
      return materialRoute(const NotificationScreen());

    case RouteConstants.doctorDetailRoute:
      return materialRoute(const DoctorDetailScreen());

    case RouteConstants.familyHealthProfileRoute:
      return materialRoute(const FamilyHealthProfileScreen());

    case RouteConstants.domesticViolenceChecklist:
      return materialRoute(const DomesticViolenceCheckListScreen());
    case RouteConstants.cageAid:
      return materialRoute(const CageAidScreen());
    case RouteConstants.bFTQuestionnaire:
      return materialRoute(const BFTQuestionnaireScreen());
    case RouteConstants.gAD7:
      return materialRoute(const GAD7Screen());
    case RouteConstants.developmentDisabilityIDD:
      return materialRoute(const DevlopmentDiabilityScreen());
    case RouteConstants.pHQ9:
      return materialRoute(const PHQ9Screen());
    case RouteConstants.mentalHealthRoute:
      return materialRoute(const MentalHealthScreen());
    case RouteConstants.socialHealthRoute:
      return materialRoute(const SocialHealthScreen());
    case RouteConstants.physicalHealthRoute:
      return materialRoute(const PhysicalHealthScreen());
    case RouteConstants.socailHealthInnerPageRoute:
      final args = settings.arguments as MapEntry<int, SocialHealthListData>;
      return materialRoute(SocailHealthInnerPage(
        element: args,
      ));

    case RouteConstants.homeRoute:
      return materialRoute(const HomeScreen());

    case RouteConstants.demographicRoute:
      return materialRoute(const DemographicScreen());

    case RouteConstants.changeLanguageRoute:
      return materialRoute(const ChangeLanguageScreen());

    case RouteConstants.changeLocationRoute:
      return materialRoute(const ChangeLocationScreen());

    case RouteConstants.settingRoute:
      return materialRoute(const SettingsScreen());

    case RouteConstants.splashRoute:
      return materialRoute(const SplashScreen());

    case RouteConstants.signInRoute:
      return materialRoute(const SignInScreen());

    case RouteConstants.signUpRoute:
      return materialRoute(const SignUpScreen());

    case RouteConstants.otpRoute:
      return materialRoute(const OTPScreen());

    case RouteConstants.newPasswordRoute:
      return materialRoute(const NewPasswordScreen());

    case RouteConstants.forgotPasswordRoute:
      return materialRoute(const ForgotPasswordScreen());

    case RouteConstants.emergencyRoute:
      return materialRoute(const EmergencyScreen());

    case RouteConstants.emergencyTypesRoute:
      return materialRoute(const EmergencyTypesScreen());

    case RouteConstants.allEmergenciesRoute:
      return materialRoute(const AllEmergenciesScreen());

    case RouteConstants.appointmentsRoute:
      return materialRoute(const AppointmentsScreen());

    case RouteConstants.communicationRoute:
      return materialRoute(const CommunicationScreen());

    case RouteConstants.meetingDetailsRoute:
      return materialRoute(const MeetingDetailsScreen());

    case RouteConstants.videoCallingRoute:
      return materialRoute(const VideoCallingScreen());

    case RouteConstants.bookAppontmentRoute:
      return materialRoute(const BookAppointmentScreen());

    case RouteConstants.bookAppontmentTwoRoute:
      return materialRoute(const BookAppointmentTwoScreen());

    case RouteConstants.audioCallingRoute:
      return materialRoute(const AudioCallingScreen());

    case RouteConstants.searchDoctorRoute:
      return materialRoute(const SearchDoctorScreen());

    case RouteConstants.visitClinicRoute:
      return materialRoute(const VisitClinicScreen());

    case RouteConstants.labTestRoute:
      return materialRoute(const LabTestScreen());

    case RouteConstants.viewLabTestRoute:
      return materialRoute(const ViewLabTestScreen());

    case RouteConstants.prescriptionRoute:
      return materialRoute(const PrescriptionScreen());
    case RouteConstants.viewPrescriptionRoute:
      return materialRoute(const ViewPrescriptionScreen());
    case RouteConstants.reviewRoute:
      return materialRoute(const ReviewScreen());
    case RouteConstants.consentFormRoute:
      return materialRoute(const ConsentFormScreen());
    case RouteConstants.termsConditionsRoute:
      return materialRoute(const TermsConditionsScreen());
    case RouteConstants.privacyPolicyRoute:
      return materialRoute(const PrivacyPolicyScreen());
    case RouteConstants.disclaimerRoute:
      return materialRoute(const DisClaimerScreen());
    case RouteConstants.allReviewsRoute:
      return materialRoute(const AllReviewsScreen());
    case RouteConstants.onboardingRoute:
      return materialRoute(const OnboardingScreen());
    case RouteConstants.faqRoute:
      return materialRoute(const FaqScreen());
    case RouteConstants.productDetaiRoute:
      final args = settings.arguments as ProductDetailArgs;
      return materialRoute(ProductDetailScreen(args: args));
    case RouteConstants.allProductsRoute:
      return materialRoute(const ProductsScreen());
    default:
      return materialRoute(const SplashScreen());
  }
}
