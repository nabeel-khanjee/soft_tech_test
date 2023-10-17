import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/family_health_profile/family_health_inner_pages/health_profile/components/expansion_tile_component.dart';
import 'package:softtech_test/src/pages/family_health_profile/family_health_inner_pages/health_profile/model/disease_family_members.dart';

class ExpansionPanelListComponentHealthProfileFamilyMembers
    extends StatefulWidget {
  const ExpansionPanelListComponentHealthProfileFamilyMembers({
    super.key,
    required this.disease,
  });
  final MapEntry<int, DiseaseFamilyMembers> disease;
  @override
  State<ExpansionPanelListComponentHealthProfileFamilyMembers> createState() =>
      _ExpansionPanelListComponentHealthProfileFamilyMembersState();
}

class _ExpansionPanelListComponentHealthProfileFamilyMembersState
    extends State<ExpansionPanelListComponentHealthProfileFamilyMembers> {
  bool? isExpanded;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: ExpansionPanelList(
            expansionCallback: (panelIndex, isExpanded) =>
                setState(() => this.isExpanded = isExpanded),
            elevation: 0,
            expandedHeaderPadding: EdgeInsets.zero,
            expandIconColor: !getThemeStateIsLight()
                ? darken(getThemeColor(context), 0.35)
                : Theme.of(context).scaffoldBackgroundColor,
            dividerColor: ColorConstants.black,
            children: [
              ExpansionPanel(
                  backgroundColor: getThemeStateIsLight()
                      ? lighten(getThemeColor(context), 0.35)
                      : lighten(getThemeColor(context), 0.3),
                  isExpanded: isExpanded ?? false,
                  headerBuilder: (context, isExpanded) =>
                      ExpansionTileComponent(
                          isExpandable: true,
                          onTap: () =>
                              setState(() => this.isExpanded = !isExpanded),
                          test: widget.disease.value.diseaseTitle),
                  body: Column(
                      children: widget.disease.value.familyMembers
                          .asMap()
                          .entries
                          .map((item) => InkWell(
                              onTap: () => setState(() => item
                                  .value.isSelected = !item.value.isSelected),
                              child: Container(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                            height: 22,
                                            width: 22,
                                            decoration: BoxDecoration(
                                                color: item.value.isSelected
                                                    ? getThemeColor(context)
                                                    : darken(
                                                        getThemeColor(context),
                                                        0.3),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Icon(Icons.check,
                                                size: 12,
                                                color: item.value.isSelected
                                                    ? ColorConstants.white
                                                    : lighten(
                                                        getThemeColor(context),
                                                        0.1))),
                                        const SizedBox(width: 10),
                                        Expanded(
                                            child: Text(item.value.name,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(
                                                        fontFamily:
                                                            FontConstantc
                                                                .gilroySemiBold,
                                                        color: !getThemeStateIsLight()
                                                            ? darken(
                                                                getThemeColor(
                                                                    context),
                                                                0.35)
                                                            : Theme.of(context)
                                                                .scaffoldBackgroundColor)))
                                      ]))))
                          .toList()))
            ]));
  }
}
