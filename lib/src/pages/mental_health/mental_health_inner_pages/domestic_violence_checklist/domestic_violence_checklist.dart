import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/mental_health/mental_health_inner_pages/cage_aid/components/check_box_tile_component.dart';
import 'package:softtech_test/src/pages/mental_health/mental_health_inner_pages/domestic_violence_checklist/data_list/domestic_violence_check_box_list.dart';
import 'package:softtech_test/src/pages/mental_health/mental_health_inner_pages/domestic_violence_checklist/data_list/domestic_violence_top_questions.dart';

class DomesticViolenceCheckListScreen extends StatelessWidget {
  const DomesticViolenceCheckListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    StringConstants.doesYourPartner,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontFamily: FontConstantc.gilroySemiBold),
                  ),
                ),
                CheckBoxListTileComponent(
                    textStyle: Theme.of(context).textTheme.bodySmall!,
                    checkBoxListData: domesticViolenceCheckBoxList),
                const BottomResultIdentifierWidget()
              ],
            )),
      ),
      isGradient: false,
      preferredSizeAppBar: kToolbarHeight * 4.5,
      appBar: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppBarcomponent(
              isGradient: false,
              title: StringConstants.domesticViolenceChecklist,
              isBackAppBar: true,
              isTitleTowLines: false),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              StringConstants
                  .lookOverTheFollowingQuestionsAndThinkAboutHowYouAreBeingTreatedAndHowYouTreatYourPartner,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Column(
            children: domesticViolenceCheckBoxTopList
                .asMap()
                .entries
                .map((domesticViolenceCheckBoxItem) => CheckBoxTileComponent(
                      item: domesticViolenceCheckBoxItem,
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: ColorConstants.yellowGolden),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
