import 'package:softtech_test/src/app/app_export.dart';

class BottomNavBarDoctorDetailScreen extends StatelessWidget {
  const BottomNavBarDoctorDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        color: Colors.transparent,
        height: 90,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          DoctorDetailScreenBottonNavBarButton(
              onTap: () {},
              text: 'Contact Dr.',
              bgColor: ColorConstants.white,
              textColor: darken(getThemeColor(context), 0.4)),
          const SizedBox(width: 10),
          DoctorDetailScreenBottonNavBarButton(
              onTap: () => NavigationUtil.push(
                  context, RouteConstants.bookAppontmentRoute),
              text: StringConstants.bookNow,
              bgColor: getThemeColor(context),
              textColor: ColorConstants.white)
        ]));
  }
}

class DoctorDetailScreenBottonNavBarButton extends StatelessWidget {
  const DoctorDetailScreenBottonNavBarButton({
    super.key,
    required this.bgColor,
    required this.textColor,
    required this.text,
    required this.onTap,
  });
  final Color bgColor;
  final Color textColor;
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: bgColor),
          padding: const EdgeInsets.all(20),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: textColor,
                height: 1,
                fontFamily: FontConstantc.gilroySemiBold),
          ),
        ),
      ),
    );
  }
}
