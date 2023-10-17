import 'package:softtech_test/src/app/app_export.dart';

class AllEmergenciesBody extends StatelessWidget {
  const AllEmergenciesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AllEmergenciesContainer(
              imageUrl: "assets/icon/breathing.svg",
              tile: "Breathing\nProblem",
            ),
            AllEmergenciesContainer(
              imageUrl: "assets/icon/mental.svg",
              tile: "Change in\nMental State",
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AllEmergenciesContainer(
              imageUrl: "assets/icon/vision.svg",
              tile: "Change in\nVision",
            ),
            AllEmergenciesContainer(
              imageUrl: "assets/icon/chest.svg",
              tile: "Chest pain",
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AllEmergenciesContainer(
              imageUrl: "assets/icon/choking.svg",
              tile: "Choking",
            ),
            AllEmergenciesContainer(
              imageUrl: "assets/icon/coughing.svg",
              tile: "Coughing up\nBlood",
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AllEmergenciesContainer(
              imageUrl: "assets/icon/fainting.svg",
              tile: "Fainting\nAttacks",
            ),
            AllEmergenciesContainer(
              imageUrl: "assets/icon/consciousness.svg",
              tile: "Loss of\nConsciousness",
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AllEmergenciesContainer(
              imageUrl: "assets/icon/si_hi.svg",
              tile: "Feeling of\nSI/HI",
            ),
            AllEmergenciesContainer(
              imageUrl: "assets/icon/vomiting.svg",
              tile: "Persistent\nVomiting",
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AllEmergenciesContainer(
              imageUrl: "assets/icon/pill.svg",
              tile: "Reaction\nof a Pill",
            ),
            AllEmergenciesContainer(
              imageUrl: "assets/icon/pain.svg",
              tile: "Sudden Pain",
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AllEmergenciesContainer(
              imageUrl: "assets/icon/dizziness.svg",
              tile: "Sudden\nDizziness",
            ),
            AllEmergenciesContainer(
              imageUrl: "assets/icon/headache.svg",
              tile: "Unusable\nHeadache",
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AllEmergenciesContainer(
              imageUrl: "assets/icon/speak.svg",
              tile: "Inability to\nSpeak",
            ),
          ],
        ),
      ],
    );
  }
}
