import 'package:softtech_test/src/app/app_export.dart';

class MentalHealthIndicatorsComponent extends StatelessWidget {
  const MentalHealthIndicatorsComponent({
    super.key,
    required this.element,
  });
  final MapEntry<int, Indications> element;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 14,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: element.value.color),
                height: 12,
                width: 12,
              ),
              const SizedBox(width: 15),
              Text(
                element.value.title,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    height: 0, fontFamily: FontConstantc.gilroyMedium),
              )
            ]),
      ),
    );
  }
}
