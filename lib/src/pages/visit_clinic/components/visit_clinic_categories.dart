import 'package:softtech_test/src/app/app_export.dart';

class VisitClinicCategories extends StatelessWidget {
  const VisitClinicCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> doctorCategories = [
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
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: darken(getThemeColor(context), 0.15),
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    doctorCategories[index],
                    style: TextStyle(
                      color: ColorConstants.white.withOpacity(0.6),
                    ),
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
