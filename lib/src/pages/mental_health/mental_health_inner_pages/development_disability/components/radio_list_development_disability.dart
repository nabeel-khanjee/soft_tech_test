import 'package:softtech_test/src/app/app_export.dart';

class RadioListDevelopmentDisability extends StatefulWidget {
  const RadioListDevelopmentDisability({
    super.key,
    required this.questions,
  });
  final MapEntry<int, Question> questions;
  @override
  State<RadioListDevelopmentDisability> createState() =>
      _RadioListDevelopmentDisabilityState();
}

class _RadioListDevelopmentDisabilityState
    extends State<RadioListDevelopmentDisability> {
  Option? selectedOption;
  bool isSelected = false;

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
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
                    if (value!.option == StringConstants.yes) {
                      widget.questions.value.isSelected = true;
                    } else {
                      widget.questions.value.isSelected = false;
                    }
                    selectedOption = value;
                  });
                }));
      }).toList()),
      widget.questions.value.isSelected == true
          ? InkWell(
              onTap: () => setState(() => isSelected = !isSelected),
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
                          color: isSelected
                              ? getThemeColor(context)
                              : darken(getThemeColor(context), 0.3),
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(Icons.check,
                          size: 12,
                          color: isSelected
                              ? ColorConstants.white
                              : lighten(getThemeColor(context), 0.1)),
                    ),
                    const SizedBox(width: 10),
                    Expanded(child: Text(StringConstants.ifSoForWhat))
                  ],
                ),
              ),
            )
          : Container(),
      widget.questions.value.isSelected == true
          ? isSelected
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    controller: controller,
                  ),
                )
              : Container()
          : Container()
    ]);
  }
}
