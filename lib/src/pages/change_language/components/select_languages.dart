import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/change_location/components/location_list.dart';

class SelectRadioListComponent extends StatefulWidget {
  const SelectRadioListComponent({
    super.key,
    required this.isLanguage,
  });
  final bool isLanguage;

  @override
  State<SelectRadioListComponent> createState() =>
      _SelecRadioListComponentState();
}

class _SelecRadioListComponentState extends State<SelectRadioListComponent> {
  String? languageCode;
  String? region;
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
            onPressed: widget.isLanguage
                ? languageCode != null
                    ? () async {
                        await context
                            .setLocale(
                              Locale(
                                languageCode!,
                                region!,
                              ),
                            )
                            .then((value) => RestartWidget.restartApp(context));
                      }
                    : null
                : null,
            style: widget.isLanguage
                ? languageCode == null
                    ? Theme.of(context).elevatedButtonTheme.style!.copyWith(
                        backgroundColor: MaterialStatePropertyAll(
                            lighten(getThemeColor(context), 0.3)))
                    : Theme.of(context).elevatedButtonTheme.style
                : Theme.of(context).elevatedButtonTheme.style!.copyWith(
                    backgroundColor: MaterialStatePropertyAll(
                        lighten(getThemeColor(context), 0.3))),
            child: Text(StringConstants.saveChanges)),
      ),
      isGradient: true,
      body: Container(
        padding: const EdgeInsets.all(
          18,
        ),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.isLanguage
                    ? languageSetting.length
                    : locationSetting.length,
                itemBuilder: (context, index) => LanguageConponent(
                  isSelected: widget.isLanguage
                      ? languageSetting[index].selected
                      : locationSetting[index].selected,
                  onTap: (isSelected) async {
                    languageSetting[index].selected = isSelected;
                    languageCode = languageSetting[index].languageCode;
                    region = languageSetting[index].region;
                    for (var element in (widget.isLanguage
                        ? languageSetting
                        : locationSetting)) {
                      if (element.name ==
                          (widget.isLanguage
                              ? languageSetting[index].name
                              : locationSetting[index].name)) {
                        element.selected = true;
                      } else {
                        element.selected = false;
                      }
                    }
                    setState(() {});
                  },
                  text: widget.isLanguage
                      ? languageSetting[index].name
                      : locationSetting[index].name,
                ),
              ),

              // const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
