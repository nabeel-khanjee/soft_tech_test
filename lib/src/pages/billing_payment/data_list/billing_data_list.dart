import 'package:softtech_test/src/app/app_export.dart';

List<BillingList> billingList = [
  BillingList(
      text: 'Claim Details',
      route: RouteConstants.billingRoute,
      args: BillingArgs(pageIndex: 0)),
  BillingList(
      text: 'Claim Log',
      route: RouteConstants.billingRoute,
      args: BillingArgs(pageIndex: 1)),
];
