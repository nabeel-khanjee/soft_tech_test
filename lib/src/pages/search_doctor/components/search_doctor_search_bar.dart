import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/search_doctor/components/search_filter_bottom_sheet.dart';

class SearchDoctorSearchBar extends StatelessWidget {
  const SearchDoctorSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          fillColor: darken(getThemeColor(context), 0.25),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          hintText: 'Search doctor',
          hintStyle: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: ColorConstants.white),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return const SearchFilterBottomSheet();
                  },
                );
              },
              child: const Icon(
                Icons.filter_list_sharp,
                color: ColorConstants.white,
              ),
            ),
          ),
          suffixIconConstraints: const BoxConstraints(minHeight: 15)),
    );
  }
}
