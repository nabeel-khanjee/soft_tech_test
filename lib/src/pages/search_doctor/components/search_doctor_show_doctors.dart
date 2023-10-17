import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/search_doctor/components/search_doctor_dialog.dart';

class SearchDoctorShowDoctors extends StatelessWidget {
  const SearchDoctorShowDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 30,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const SearchDoctorDialog();
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Container(
                height: 95,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: darken(getThemeColor(context), 0.25),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 84,
                        width: 74,
                        decoration: BoxDecoration(
                          color: ColorConstants.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset("assets/icon/dr_profile.png"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text("Dr. Rachel McAdams"),
                        Text(
                          "General Physician",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                color: ColorConstants.white.withOpacity(0.6),
                              ),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.yellow),
                            Text(
                              " 4.4 (236 Reviews)",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
