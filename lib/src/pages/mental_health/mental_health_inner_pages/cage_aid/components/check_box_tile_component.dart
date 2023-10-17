import 'package:softtech_test/src/app/app_export.dart';

class CheckBoxTileComponent extends StatefulWidget {
  const CheckBoxTileComponent({
    super.key,
    required this.item,
    required this.textStyle,
  });
  final MapEntry<int, CheckBoxListData> item;
  final TextStyle textStyle;

  @override
  State<CheckBoxTileComponent> createState() => _CheckBoxTileComponentState();
}

class _CheckBoxTileComponentState extends State<CheckBoxTileComponent> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(
          () => widget.item.value.isSelected = !widget.item.value.isSelected),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(
                  color: widget.item.value.isSelected
                      ? getThemeColor(context)
                      : darken(getThemeColor(context), 0.3),
                  borderRadius: BorderRadius.circular(8)),
              child: Icon(
                Icons.check,
                size: 12,
                color: widget.item.value.isSelected
                    ? ColorConstants.white
                    : lighten(getThemeColor(context), 0.1),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: Text(
              widget.item.value.name,
              style: widget.textStyle,
            ))
          ],
        ),
      ),
    );
  }
}
