import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/animated_drawer/drawer_element_tile_widget.dart';
import 'package:softtech_test/src/pages/animated_drawer/route_list_app_args.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<RouteListApp> drawerElements = [
      RouteListApp(
        isInnerPage: true,
        pageIndex: 0,
        name: StringConstants.home,
        route: RouteConstants.homeRoute,
        icon: AssetsConstants.homeIcon,
      ),
      // RouteListApp(
      //   isInnerPage: true,
      //   name: StringConstants.profile,
      //   route: RouteConstants.profileRoute,
      //   icon: AssetsConstants.profileIcon,
      //   pageIndex: 1,
      // ),
      // RouteListApp(
      //   isInnerPage: true,
      //   pageIndex: 2,
      //   name: StringConstants.appointments,
      //   route: RouteConstants.appointmentsRoute,
      //   icon: AssetsConstants.appointmentsIcon,
      // ),
      // RouteListApp(
      //   isInnerPage: true,
      //   pageIndex: 3,
      //   name: StringConstants.communication,
      //   route: RouteConstants.appointmentsRoute,
      //   icon: AssetsConstants.communicationIcon,
      // ),
      // RouteListApp(
      //   isInnerPage: true,
      //   pageIndex: 4,
      //   name: StringConstants.documents,
      //   route: RouteConstants.appointmentsRoute,
      //   icon: AssetsConstants.documentsIcon,
      // ),
      // RouteListApp(
      //   isInnerPage: true,
      //   pageIndex: 5,
      //   name: StringConstants.medications,
      //   route: RouteConstants.appointmentsRoute,
      //   icon: AssetsConstants.medicationsIcon,
      // ),
      // RouteListApp(
      //   isInnerPage: true,
      //   pageIndex: 6,
      //   name: StringConstants.billings,
      //   route: RouteConstants.appointmentsRoute,
      //   icon: AssetsConstants.billsIcon,
      // ),
      RouteListApp(
        isInnerPage: true,
        pageIndex: 7,
        name: StringConstants.settings,
        route: RouteConstants.settingRoute,
        icon: AssetsConstants.settingIcon,
      ),
    ];
    return SizedBox(
      height: 600,
      child: Drawer(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: drawerElements
              .asMap()
              .entries
              .map((element) => DrawerElementTileWidget(element: element))
              .toList(),
        ),
      ),
    );
  }
}
