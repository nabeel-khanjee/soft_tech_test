import 'package:softtech_test/src/app/app_export.dart';

class EmergencyTypesButtons extends StatelessWidget {
  const EmergencyTypesButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: typesButton(context, "assets/icon/ambulance.svg", "Ambulance"),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: GestureDetector(
            onTap: () {
              NavigationUtil.push(
                context,
                RouteConstants.allEmergenciesRoute,
              );
            },
            child: typesButton(
              context,
              "assets/icon/check_up.svg",
              "All Emergencies",
            ),
          ),
        ),
      ],
    );
  }

  Widget typesButton(BuildContext context, String imgUrl, String title) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: darken(getThemeColor(context), 0.25),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(imgUrl),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
