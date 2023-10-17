import 'package:softtech_test/src/app/app_export.dart';

class NextWidget extends StatelessWidget {
  const NextWidget({
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
              backgroundColor:
                  MaterialStatePropertyAll((getThemeColor(context)))),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  'Next',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontFamily: FontConstantc.gilroyMedium),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 3.0),
                child: Icon(
                  Icons.arrow_right_rounded,
                  size: 36,
                ),
              ),
            ],
          )),
    );
  }
}
