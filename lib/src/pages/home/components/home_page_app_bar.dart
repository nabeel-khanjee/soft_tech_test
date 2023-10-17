import 'package:softtech_test/src/app/app_export.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      snap: false,
      floating: true,
      expandedHeight: 160.0,
      centerTitle: true,
      title: const AppBarTitle(),
      flexibleSpace: const Center(
        child: FlexibleSpaceBar(
          expandedTitleScale: 10,
          centerTitle: true,
          background: FlutterLogo(),
        ),
      ),
      actions: const [
        Icon(
          Icons.chat,
        ),
        Icon(
          Icons.notifications,
        ),
      ],
      leading: IconButton(
          onPressed: () => drawerStateChnageUpdateIndex(
                context: context,
                advancedDrawerController:
                    BlocProvider.of<AnimatedDrawerCubit>(context)
                        .advancedDrawerController,
                isOpen: false,
              ),
          icon: const Icon(
            Icons.more_vert,
          )),
    );
  }
}
