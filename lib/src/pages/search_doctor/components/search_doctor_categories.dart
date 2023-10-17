import 'package:softtech_test/src/app/app_export.dart';

class SearchDoctorCategories extends StatelessWidget {
  const SearchDoctorCategories({super.key, this.fillColor});

  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    List<String> doctorCategories = [
      "All",
      "General",
      "Dentist",
      "Neurosurgeon",
      "Heart Specialist",
      "Eye Specialist",
    ];
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: doctorCategories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Padding(
            padding: EdgeInsets.only(
                right: (index == doctorCategories.length - 1) ? 0.0 : 10.0),
            child: Container(
              decoration: BoxDecoration(
                color: fillColor ?? Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: fillColor == null
                      ? darken(getThemeColor(context), 0.15)
                      : Colors.transparent,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    doctorCategories[index],
                    style: TextStyle(
                        color: ColorConstants.white
                            .withOpacity(fillColor == null ? 0.6 : 1.0)),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
