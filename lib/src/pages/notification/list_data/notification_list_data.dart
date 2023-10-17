import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/notification/model/notification_data_model.dart';

List<AppNotification> notificationList = [
  AppNotification(
    date: 'Today  |  15:36 PM',
    decs:
        'You have successfully canceled your appointment with Bruce Andrews on Dec 24, 2023, 06:30 PM.',
    image: AssetsConstants.appointmentCancleIcon,
    isNew: true,
    title: 'Appointment Cancelled!',
  ),
  AppNotification(
    date: 'Today  |  15:36 PM',
    decs:
        'You have successfully canceled your appointment with Bruce Andrews on Dec 24, 2023, 06:30 PM.',
    image: AssetsConstants.schedualChangedIcon,
    isNew: true,
    title: 'Schedule Changed',
  ),
  AppNotification(
    date: 'Today  |  15:36 PM',
    decs:
        'You have successfully canceled your appointment with Bruce Andrews on Dec 24, 2023, 06:30 PM.',
    image: AssetsConstants.paymentConfirmedIcon,
    isNew: false,
    title: 'Payment Condfirmed',
  ),
  AppNotification(
    date: '15 Dec, 2023  |  15:36 PM',
    decs:
        'You have successfully canceled your appointment with Bruce Andrews on Dec 24, 2023, 06:30 PM.',
    image: AssetsConstants.rateExperienceIcon,
    isNew: false,
    title: 'Rate your Experience',
  ),
  AppNotification(
    date: '15 Dec, 2023  |  15:36 PM',
    decs:
        'You have successfully canceled your appointment with Bruce Andrews on Dec 24, 2023, 06:30 PM.',
    image: AssetsConstants.disputeCreatedIcon,
    isNew: false,
    title: 'Dispute Created',
  ),
  AppNotification(
    date: '15 Dec, 2023  |  15:36 PM',
    decs: 'You have successfully changed your password.',
    image: AssetsConstants.passwordChangedIcon,
    isNew: false,
    title: 'Password Changed',
  ),
];
