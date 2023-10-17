import 'package:softtech_test/src/app/app_export.dart';

class BloodGroupListComponent extends StatelessWidget {
  const BloodGroupListComponent({
    super.key,
    required this.bloodGroupList,
    required this.selectedBloodGroup,
    required this.onBloodGroupTap,
  });

  final List<BloodGroup> bloodGroupList;
  final String? selectedBloodGroup;
  final Function(String? bloodGroup) onBloodGroupTap;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: bloodGroupList
            .asMap()
            .entries
            .map((bloodGroup) => InkWell(
                  onTap: () {
                    onBloodGroupTap(bloodGroup.value.bloddGroud);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 52,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: selectedBloodGroup == bloodGroup.value.bloddGroud
                            ? lighten(getThemeColor(context), 0.1)
                            : getThemeStateIsLight()
                                ? darken(getThemeColor(context), 0.3)
                                : lighten(getThemeColor(context), 0.3)),
                    child: Center(child: Text(bloodGroup.value.bloddGroud)),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
