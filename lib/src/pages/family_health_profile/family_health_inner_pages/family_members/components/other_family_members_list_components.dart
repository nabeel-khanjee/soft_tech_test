import 'package:softtech_test/src/app/app_export.dart';

class OtherFamilyMembersListComponent extends StatelessWidget {
  const OtherFamilyMembersListComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: questionsFamilyHealthOtherSpecify
          .asMap()
          .entries
          .map((questions) => Row(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: getThemeColor(context)),
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                      ),
                    ],
                  )),
                  Expanded(child: RadioList(questions: questions, isRow: true)),
                ],
              ))
          .toList(),
    );
  }
}
