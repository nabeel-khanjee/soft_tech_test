import 'package:softtech_test/src/app/app_export.dart';

class ViewPrescriptionBody extends StatelessWidget {
  const ViewPrescriptionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: darken(getThemeColor(context), 0.28),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                  itemCount: 4,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MedicineView(
                              title: "Medicine",
                              dose: "Ibuprofen",
                              detail: "(150 mg)",
                            ),
                            MedicineType(),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MedicineView(
                              title: "Dose",
                              dose: "0-1-0-1",
                              detail: "After Meal",
                            ),
                            MedicineView(
                              title: "Duration",
                              dose: "4 Days",
                              detail: "Daily",
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Divider(
                          color: ColorConstants.white.withOpacity(0.6),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
