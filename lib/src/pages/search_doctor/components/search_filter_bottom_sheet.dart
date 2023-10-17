import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/search_doctor/components/bottom_sheet_buttons.dart';
import 'package:softtech_test/src/pages/search_doctor/components/bottom_sheet_ratings.dart';
import 'package:softtech_test/src/pages/search_doctor/components/search_doctor_categories.dart';

class SearchFilterBottomSheet extends StatelessWidget {
  const SearchFilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.45,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search Filters",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: darken(getThemeColor(context), 0.25),
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SvgPicture.asset("assets/icon/cross.svg"),
              ],
            ),
            const SizedBox(height: 5),
            const Divider(color: ColorConstants.grey),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Speciality",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: darken(getThemeColor(context), 0.25),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SearchDoctorCategories(
                    fillColor: lighten(getThemeColor(context), 0.15),
                  ),
                  Text(
                    "Ratings",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: darken(getThemeColor(context), 0.25),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const BottomSheetRatings(),
                  const BottomSheetButtons(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
