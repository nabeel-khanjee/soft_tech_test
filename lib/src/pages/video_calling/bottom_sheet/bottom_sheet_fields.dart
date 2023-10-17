import 'package:softtech_test/src/app/app_export.dart';

class BottomSheetFields extends StatefulWidget {
  const BottomSheetFields({super.key});

  @override
  State<BottomSheetFields> createState() => _BottomSheetFieldsState();
}

class _BottomSheetFieldsState extends State<BottomSheetFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        recordNameField(),
        const SizedBox(height: 10),
        recordTypeField(),
        const SizedBox(height: 20),
        uploadButton(),
      ],
    );
  }

  Widget recordNameField() {
    return Theme(
      data: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          fillColor: ColorConstants.white,
          filled: true,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 14, horizontal: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      child: TextFormField(
        decoration: const InputDecoration(hintText: "Record Name"),
      ),
    );
  }

  Widget recordTypeField() {
    List<String> records = ["Image", "Document", "Other"];

    String selectedRecord = "Image";

    return Row(
      children: [
        Expanded(
          child: Theme(
            data: ThemeData(
              inputDecorationTheme: const InputDecorationTheme(
                fillColor: ColorConstants.white,
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 14, horizontal: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Record Type",
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: ColorConstants.white,
            border: Border.all(color: ColorConstants.greyText.withOpacity(0.4)),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: DropdownButton<String>(
            value: selectedRecord,
            underline: Container(),
            // dropdownColor: darken(getThemeColor(context), 0.25),
            onChanged: (String? newValue) {
              setState(() {
                selectedRecord = newValue!;
              });
            },
            items: records
                .map<DropdownMenuItem<String>>(
                  (e) => DropdownMenuItem<String>(
                    value: e,
                    child: Text(
                      e,
                      style: const TextStyle(color: ColorConstants.grey),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget uploadButton() {
    return SizedBox(
      height: 56,
      width: 158,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Upload File",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
