import 'package:softtech_test/src/app/app_export.dart';

class CPTHCPCSCodeListComponent extends StatelessWidget {
  const CPTHCPCSCodeListComponent({
    super.key,
    required this.cPTHCPCSCodeList,
  });

  final List<CPTHCPCSCode> cPTHCPCSCodeList;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: cPTHCPCSCodeList
            .asMap()
            .entries
            .map((cPTHCPCSCode) => Container(
                margin: const EdgeInsets.only(bottom: 4, top: 4),
                decoration: BoxDecoration(
                    color: getThemeStateIsLight()
                        ? darken(getThemeColor(context), 0.2)
                        : lighten(getThemeColor(context), 0.35),
                    borderRadius: BorderRadius.circular(16),
                    border:
                        Border.all(width: 2, color: getThemeColor(context))),
                height: 44,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(cPTHCPCSCode.value.code,
                          style: Theme.of(context).textTheme.bodyLarge),
                      Text(cPTHCPCSCode.value.unit,
                          style: Theme.of(context).textTheme.bodyLarge),
                      Text(cPTHCPCSCode.value.price,
                          style: Theme.of(context).textTheme.bodyLarge),
                    ])))
            .toList());
  }
}
