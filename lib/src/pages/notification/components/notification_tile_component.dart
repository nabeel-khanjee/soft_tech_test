import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/notification/model/notification_data_model.dart';

class NotificationTileComponent extends StatelessWidget {
  const NotificationTileComponent({
    super.key,
    required this.notification,
  });
  final MapEntry<int, AppNotification> notification;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: getThemeStateIsLight()
            ? darken(getThemeColor(context), 0.3)
            : lighten(getThemeColor(context), 0.35),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  notification.value.image,
                  width: 49,
                  height: 49,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(notification.value.title,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: FontConstantc.gilroySemiBold)),
                    Text(notification.value.date,
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            fontFamily: FontConstantc.gilroyMedium,
                            color: !getThemeStateIsLight()
                                ? darken(getThemeColor(context), 0.2)
                                : lighten(getThemeColor(context), 0.3)))
                  ],
                ),
              ),
              if (notification.value.isNew)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: ColorConstants.greenIndicatorColor),
                    width: 35,
                    height: 21,
                    child: const Center(child: Text('New')),
                  ),
                )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(notification.value.decs,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontFamily: FontConstantc.gilroyMedium,
                  color: !getThemeStateIsLight()
                      ? darken(getThemeColor(context), 0.2)
                      : lighten(getThemeColor(context), 0.3)))
        ],
      ),
    );
  }
}
