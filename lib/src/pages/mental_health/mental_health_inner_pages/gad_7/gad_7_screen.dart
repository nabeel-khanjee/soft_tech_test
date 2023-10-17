import 'package:softtech_test/src/app/app_export.dart';
import 'package:softtech_test/src/pages/mental_health/mental_health_inner_pages/gad_7/components/gad_7_appbar_compoent.dart';
import 'package:softtech_test/src/pages/mental_health/mental_health_inner_pages/gad_7/components/gad_7_widget.dart';
import 'package:softtech_test/src/pages/mental_health/mental_health_inner_pages/gad_7/cubit/gad_7_cubit.dart';
import 'package:softtech_test/src/pages/mental_health/mental_health_inner_pages/gad_7/data_list/gad_7_data_list.dart';

class GAD7Screen extends StatelessWidget {
  const GAD7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt.get<GAD7Cubit>()..updateIndex(score: 0),
        child: BlocBuilder<GAD7Cubit, GAD7State>(
            builder: (context, state) => state.maybeWhen(
                loading: () => Container(),
                orElse: () => const AppProgressIndicator(),
                loaded: (score) => MainScaffold(
                      body: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: questionsGAD7
                              .asMap()
                              .entries
                              .map((question) => GAD7Widget(question: question))
                              .toList(),
                        ),
                      ),
                      isGradient: false,
                      preferredSizeAppBar: kToolbarHeight * 3.9,
                      appBar: GAD7AppbarComponent(
                          score: BlocProvider.of<GAD7Cubit>(context)
                              .getUpdatedValue),
                    ))));
  }
}
