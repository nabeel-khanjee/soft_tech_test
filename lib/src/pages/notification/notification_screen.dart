import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/notification/components/notification_tile_component.dart';
import 'package:softtech_test/src/pages/notification/list_data/notification_list_data.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: notificationList
                .asMap()
                .entries
                .map((notification) =>
                    NotificationTileComponent(notification: notification))
                .toList(),
          ),
        ),
      ),
      isGradient: false,
      appBar: AppBarcomponent(
          isGradient: false,
          title: StringConstants.notification,
          isBackAppBar: true,
          isTitleTowLines: false),
    );
  }
}
