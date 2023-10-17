import 'package:softtech_test/src/app/app_export.dart';

class SearchCompoentHome extends StatelessWidget {
  const SearchCompoentHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigationUtil.push(
          context,
          RouteConstants.searchDoctorRoute,
        );
      },
      child: Container(
        height: 54,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: !getThemeStateIsLight()
                ? (lighten(getThemeColor(context), 0.35))
                : darken(getThemeColor(context), 0.3)),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(StringConstants.searchDoctorOrAnything),
              Image.asset(
                AssetsConstants.searchIcon,
                height: 20,
                width: 20,
              )
            ]),
      ),
    );
  }
}
