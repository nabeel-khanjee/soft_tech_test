import 'package:softtech_test/src/app/app_export.dart';

class PageNumberWidget extends StatelessWidget {
  const PageNumberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ElevatedButton(
          style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
              elevation: const MaterialStatePropertyAll(0),
              maximumSize: const MaterialStatePropertyAll(Size.fromHeight(38)),
              minimumSize: const MaterialStatePropertyAll(Size.fromHeight(38)),
              padding: const MaterialStatePropertyAll(EdgeInsets.zero),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: getThemeColor(context)))),
              backgroundColor: MaterialStatePropertyAll(
                getThemeStateIsLight()
                    ? darken(getThemeColor(context), 0.2)
                    : lighten(getThemeColor(context), 0.35),
              )),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '1 / 20',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontFamily: FontConstantc.gilroyMedium),
              ),
            ],
          )),
    );
  }
}
