import 'package:softtech_test/src/app/app_export.dart';

class RequestDocumentBody extends StatefulWidget {
  const RequestDocumentBody({super.key});

  @override
  State<RequestDocumentBody> createState() => _RequestDocumentBodyState();
}

class _RequestDocumentBodyState extends State<RequestDocumentBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        serviceDate(),
        const SizedBox(height: 15),
        documentReason(),
        const SizedBox(height: 15),
        documentComments(),
      ],
    );
  }

  Widget serviceDate() {
    return Theme(
      data: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          fillColor: ColorConstants.white,
          filled: true,
          // contentPadding: const EdgeInsets.symmetric(vertical: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Date of Service",
          hintStyle: const TextStyle(color: ColorConstants.grey),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SvgPicture.asset("assets/icon/calendar.svg"),
          ),
          suffixIconConstraints: const BoxConstraints(minHeight: 10),
        ),
      ),
    );
  }

  Widget documentReason() {
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
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
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
                hintText: "Reason of Doc",
                hintStyle: TextStyle(color: ColorConstants.grey),
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

  Widget documentComments() {
    return Container(
      height: 210,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorConstants.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Comments",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: ColorConstants.grey,
              ),
        ),
      ),
    );
  }
}
