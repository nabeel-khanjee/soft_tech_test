import 'package:softtech_test/src/app/app_export.dart';

class AllEmergenciesSearchBar extends StatelessWidget {
  const AllEmergenciesSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Theme(
          data: ThemeData(
            inputDecorationTheme: InputDecorationTheme(
              fillColor: ColorConstants.white,
              filled: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "All Emergencies",
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SvgPicture.asset("assets/icon/search.svg"),
              ),
              prefixIconConstraints: const BoxConstraints(minHeight: 10),
            ),
          ),
        ),
      ],
    );
  }
}
