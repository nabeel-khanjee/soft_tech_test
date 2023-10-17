import 'package:softtech_test/src/app/app_export.dart';

class RadioList extends StatefulWidget {
  const RadioList({
    super.key,
    required this.questions,
    required this.isRow,
  });
  final MapEntry<int, Question> questions;
  final bool isRow;
  @override
  State<RadioList> createState() => _RadioListState();
}

class _RadioListState extends State<RadioList> {
  Option? selectedOption;

  @override
  Widget build(BuildContext context) {
    return widget.isRow
        ? Row(
            children:
                widget.questions.value.options.asMap().entries.map((options) {
              return Expanded(
                child: RadioListTile<Option>(
                  contentPadding: EdgeInsets.zero,
                  activeColor: (getThemeColor(context)),
                  dense: true,
                  fillColor: MaterialStatePropertyAll(
                      lighten(getThemeColor(context), 0.05)),
                  selectedTileColor: ColorConstants.black,
                  title: Text(
                    options.value.option,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: !getThemeStateIsLight()
                            ? darken(getThemeColor(context), 0.5)
                            : lighten(getThemeColor(context), 0.4)),
                  ),
                  value: options.value,
                  groupValue: selectedOption,
                  onChanged: (Option? value) {
                    setState(() {
                      widget.questions.value.isSelected = true;
                      selectedOption = value;
                    });
                  },
                ),
              );
            }).toList(),
          )
        : Column(
            children:
                widget.questions.value.options.asMap().entries.map((options) {
              return RadioListTile<Option>(
                contentPadding: EdgeInsets.zero,
                activeColor: (getThemeColor(context)),
                dense: true,
                fillColor: MaterialStatePropertyAll(
                    lighten(getThemeColor(context), 0.05)),
                selectedTileColor: ColorConstants.black,
                title: Text(
                  options.value.option,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: !getThemeStateIsLight()
                          ? darken(getThemeColor(context), 0.5)
                          : lighten(getThemeColor(context), 0.4)),
                ),
                value: options.value,
                groupValue: selectedOption,
                onChanged: (Option? value) {
                  setState(() {
                    widget.questions.value.isSelected = true;
                    selectedOption = value;
                  });
                },
              );
            }).toList(),
          );
  }
}
