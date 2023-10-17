import 'package:softtech_test/src/app/app_export.dart';

class PHQ9Screen extends StatelessWidget {
  const PHQ9Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt.get<PHQ9Cubit>()..updateIndex(score: 0),
        child: BlocBuilder<PHQ9Cubit, PHQ9State>(
            builder: (context, state) => state.maybeWhen(
                loading: () => const AppProgressIndicator(),
                orElse: () => Container(),
                loaded: (score) => MainScaffold(
                      body: SingleChildScrollView(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: questionsPHQ7
                                .asMap()
                                .entries
                                .map((question) =>
                                    PHQ9Widget(question: question))
                                .toList()),
                      ),
                      isGradient: false,
                      preferredSizeAppBar: kToolbarHeight * 3.9,
                      appBar: PHQAppbarComponent(
                          score: BlocProvider.of<PHQ9Cubit>(context)
                              .getUpdatedValue),
                    ))));
  }
}
