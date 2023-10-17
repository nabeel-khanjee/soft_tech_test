import 'package:softtech_test/src/app/app_export.dart';

class DropDownComponentProfile extends StatelessWidget {
  const DropDownComponentProfile({
    super.key,
    required this.items,
    required this.selectedItem,
    this.value,
    required this.hintText,
    this.suffixIcon,
    required this.onDropdownFieldTap,
    this.bgColor = ColorConstants.white,
    this.textColor = ColorConstants.greyText,
    this.iconColor = ColorConstants.greyText,
    this.verticalMargin = 8,
  });
  final String? value;
  final String? suffixIcon;
  final String hintText;
  final List<String> items;
  final Function(String?) selectedItem;
  final VoidCallback onDropdownFieldTap;
  final Color bgColor;
  final Color textColor;
  final Color iconColor;
  final double verticalMargin;

  @override
  Widget build(BuildContext context) {
    String? value = this.value;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: EdgeInsets.symmetric(vertical: verticalMargin),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: bgColor),
      child: Stack(
        alignment: getCurrentLanguageDirection()
            ? Alignment.centerLeft
            : Alignment.centerRight,
        children: [
          value != null
              ? InkWell(
                  onTap: onDropdownFieldTap,
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          hintText,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(color: textColor),
                        ),
                        Text(
                          value,
                          maxLines: 1,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: ColorConstants.greyText),
                        )
                      ],
                    ),
                  ),
                )
              : DropdownButton<String>(
                  dropdownColor: bgColor,
                  value: value,
                  isExpanded: true,
                  hint: Text(
                    hintText,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: textColor),
                  ),
                  icon: Container(),
                  underline: Container(),
                  items: items.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: getThemeColor(context)),
                      ),
                    );
                  }).toList(),
                  onChanged: (_) => selectedItem(_),
                ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(
                suffixIcon ?? AssetsConstants.arrowDownDropdownIcon,
                height: 24,
                width: 24,
                color: iconColor,
              )),
        ],
      ),
    );
  }
}
