import 'package:softtech_test/src/app/app_export.dart';

class DiagnosisCodeGrid extends StatelessWidget {
  const DiagnosisCodeGrid({
    super.key,
    required this.diagnosisCodeList,
  });

  final List<String> diagnosisCodeList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: diagnosisCodeList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3.5, mainAxisSpacing: 1, crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.only(
                  right: index.isEven ? 8 : 0, bottom: 4, top: 4),
              decoration: BoxDecoration(
                  color: getThemeStateIsLight()
                      ? darken(getThemeColor(context), 0.2)
                      : lighten(getThemeColor(context), 0.35),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 2, color: getThemeColor(context))),
              height: 44,
              child: Center(
                  child: Text(diagnosisCodeList[index],
                      style: Theme.of(context).textTheme.bodyLarge)));
        });
  }
}
