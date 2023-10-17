import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/mental_health/mental_health_inner_pages/cage_aid/components/check_box_tile_component.dart';

class CheckBoxListTileComponent extends StatelessWidget {
  const CheckBoxListTileComponent({
    super.key,
    required this.checkBoxListData,
    required this.textStyle,
  });
  final List<CheckBoxListData> checkBoxListData;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: checkBoxListData
            .asMap()
            .entries
            .map(
              (item) => CheckBoxTileComponent(
                item: item,
                textStyle: textStyle,
              ),
            )
            .toList());
  }
}
