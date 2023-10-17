import 'package:softtech_test/src/app/app_export.dart';

class DocumentsBody extends StatelessWidget {
  const DocumentsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> docsName = [
      "Health Records 2019.docx",
      "Medical History.xls",
      "Healthy lifestyle.ppt",
      "Health Records 2019.docx",
      "Medical History.xls",
      "Health Records 2019.docx",
      "Medical History.xls",
      "Healthy lifestyle.ppt",
      "Health Records 2019.docx",
      "Medical History.xls",
    ];

    final List<String> iconsUrl = [
      "assets/icon/file_jpg.png",
      "assets/icon/file_png.png",
      "assets/icon/file_ppt.png",
      "assets/icon/file_jpg.png",
      "assets/icon/file_png.png",
      "assets/icon/file_ppt.png",
      "assets/icon/file_jpg.png",
      "assets/icon/file_png.png",
      "assets/icon/file_ppt.png",
      "assets/icon/file_ppt.png",
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("All Documents"),
          const SizedBox(height: 20),
          Expanded(
            child: Stack(
              children: [
                ListView.builder(
                  itemCount: docsName.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: DocumentsView(
                          title: docsName[index],
                          iconUrl: iconsUrl[index],
                        ),
                      ),
                    );
                  },
                ),
                Positioned(
                  bottom: 15,
                  left: 100,
                  child: SizedBox(
                    width: 150,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        NavigationUtil.push(
                          context,
                          RouteConstants.requestDocumentRoute,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConstants.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Text(
                        "+ Request a Doc",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: darken(getThemeColor(context), 0.3),
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
