import 'package:flutter/services.dart';
import 'package:softtech_test/src/app/app_export.dart';

class TextFormFieldComponent extends StatelessWidget {
  const TextFormFieldComponent({
    super.key,
    required this.controller,
    this.listTextInputFormatter,
    required this.label,
    this.maxLines = 1,
    this.hintText = '',
    this.verticalPadding = 8.0,
    this.lableColor = ColorConstants.greyText,
    this.textInputType = TextInputType.text,
  });
  final List<TextInputFormatter>? listTextInputFormatter;
  final String label;
  final TextEditingController controller;
  final int maxLines;
  final String hintText;
  final double verticalPadding;
  final Color lableColor;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding),
      child: TextFormField(
        keyboardType: textInputType,
        strutStyle: const StrutStyle(
          height: 1.3,
        ),
        maxLines: maxLines,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        inputFormatters: listTextInputFormatter,
        controller: controller,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontFamily: FontConstantc.gilroyMedium,
            color: darken(
              getThemeColor(context),
              0.4,
            )),
        decoration: InputDecoration(
            focusColor: getThemeColor(context),
            filled: true,
            fillColor: !getThemeStateIsLight()
                ? (lighten(getThemeColor(context), 0.35))
                : ColorConstants.white,
            hintText: hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: ColorConstants.greyText),
            labelStyle: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: lableColor),
            label: Text(label,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: lableColor,
                    )),
            enabledBorder: UnderlineInputBorder(
                borderSide:
                    const BorderSide(color: ColorConstants.white, width: 0),
                borderRadius: BorderRadius.circular(20)),
            errorBorder: UnderlineInputBorder(
                borderSide:
                    const BorderSide(color: ColorConstants.white, width: 0),
                borderRadius: BorderRadius.circular(20)),
            disabledBorder: UnderlineInputBorder(
                borderSide:
                    const BorderSide(color: ColorConstants.white, width: 0),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: UnderlineInputBorder(
                borderSide:
                    const BorderSide(color: ColorConstants.white, width: 0),
                borderRadius: BorderRadius.circular(20)),
            border: UnderlineInputBorder(
                borderSide:
                    const BorderSide(color: ColorConstants.white, width: 0),
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
