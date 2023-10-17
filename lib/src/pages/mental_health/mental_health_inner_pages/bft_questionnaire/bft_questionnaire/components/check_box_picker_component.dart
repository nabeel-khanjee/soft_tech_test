import 'package:softtech_test/src/app/app_export.dart';

class CheckBoxPickerComponent extends StatefulWidget {
  const CheckBoxPickerComponent({
    super.key,
    required this.question,
  });
  final MapEntry<int, Question> question;

  @override
  State<CheckBoxPickerComponent> createState() =>
      _CheckBoxPickerComponentState();
}

class _CheckBoxPickerComponentState extends State<CheckBoxPickerComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.symmetric(horizontal: 0),
      decoration: BoxDecoration(
          border: Border.all(color: getThemeColor(context), width: 1.5),
          color: darken(getThemeColor(context), 0.3),
          borderRadius: BorderRadius.circular(0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: widget.question.value.options
            .asMap()
            .entries
            .map((option) => Expanded(
                    child: Container(
                  height: 54,
                  decoration: BoxDecoration(
                      border:
                          widget.question.value.options.length != option.key + 1
                              ? !getCurrentLanguageDirection()
                                  ? Border(
                                      right: BorderSide(
                                          color: getThemeColor(context),
                                          width: 1.5))
                                  : Border(
                                      left: BorderSide(
                                          color: getThemeColor(context),
                                          width: 1.5),
                                    )
                              : null),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () =>
                              setState(() => option.value.isSelected = true),
                          child: Image.asset(
                            AssetsConstants.checkOptionIcon,
                            color: getCheckColor(
                                isSelected: option.value.isSelected),
                            height: 22,
                            width: 22,
                          ),
                        ),
                        InkWell(
                          onTap: () =>
                              setState(() => option.value.isSelected = false),
                          child: Image.asset(
                            color: getCrossColor(
                                isSelected: option.value.isSelected),
                            AssetsConstants.crossOptionIcon,
                            height: 22,
                            width: 22,
                          ),
                        )
                      ],
                    ),
                  )),
                )))
            .toList(),
      ),
    );
  }

  Color? getCheckColor({bool? isSelected}) =>
      isSelected == true ? const Color.fromARGB(255, 55, 255, 0) : null;

  Color? getCrossColor({bool? isSelected}) =>
      isSelected == false ? const Color.fromARGB(255, 255, 0, 0) : null;
}
