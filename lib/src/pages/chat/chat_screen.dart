import 'package:softtech_test/src/app/app_export.dart';

class ChatMessage {
  String messageContent;
  String messageType;
  String date;

  ChatMessage(
      {required this.date,
      required this.messageContent,
      required this.messageType});
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatMessage> messages = [
    ChatMessage(
      date: 'Yesterday, 03:29 pm',
      messageContent: "It was really great to see you and the kids!",
      messageType: "receiver",
    ),
    ChatMessage(
        date: 'Today, 02:35 pm',
        messageContent:
            "Two driven jocks help fax my big quiz. Quick, Baz, get my woven flax jodhpurs! “Now fax quiz Jack!” my brave ghost pled. Five quacking zeon a dark phyrs jolt my wax bed.",
        messageType: "receiver"),
    ChatMessage(
        date: 'Today, 03:30 pm',
        messageContent: "It was really great to see you and the kids!",
        messageType: "sender"),
    ChatMessage(
        date: 'Yesterday, 03:29 pm',
        messageContent: "It was really great to see you and the kids!",
        messageType: "receiver"),
    ChatMessage(
        date: 'Today, 03:30 pm',
        messageContent: "It was really great to see you and the kids!",
        messageType: "sender"),
  ];

  ScrollController messagesScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    TextEditingController messagesController = TextEditingController();

    return IsGradientBackGround(
      appbarText: '',
      isAppBar: false,
      isBackAppBar: true,
      body: MainScaffold(
          preferredSizeAppBar: kToolbarHeight * 1.3,
          bottomNavigationBar: Container(
            height: kToolbarHeight * 2,
            decoration:
                BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: lighten(getThemeColor(context), 0.35)),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 55,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                    AssetsConstants.attachmentIcon,
                                    height: 25.5,
                                    width: 25.5,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: TextField(
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                            fontFamily:
                                                FontConstantc.gilroyMedium),
                                    controller: messagesController,
                                    decoration: InputDecoration(
                                        hintText: "Message..",
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .labelSmall!
                                            .copyWith(
                                                color: !getThemeStateIsLight()
                                                    ? darken(
                                                        getThemeColor(context),
                                                        0.5)
                                                    : Theme.of(context)
                                                        .scaffoldBackgroundColor,
                                                fontFamily:
                                                    FontConstantc.gilroyMedium),
                                        border: InputBorder.none),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {});
                                    if (messagesController.text.isEmpty) {
                                      ToastComponent3(context).showToast(
                                          context, 'PLease enter message');
                                    } else {
                                      messages.add(
                                        ChatMessage(
                                            date:
                                                "Today.${DateTime.now().toLocal().hour.toString()}:${DateTime.now().toLocal().minute.toString()} pm",
                                            messageContent:
                                                messagesController.text,
                                            messageType: "sender"),
                                      );
                                      messagesScrollController.animateTo(
                                        messagesScrollController
                                                .position.maxScrollExtent +
                                            100,
                                        curve: Curves.easeOut,
                                        duration:
                                            const Duration(milliseconds: 300),
                                      );
                                    }
                                    messagesController.clear();
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: getThemeColor(context)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        AssetsConstants.sendMsgIcon,
                                        height: 13,
                                        width: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: ListView.builder(
            controller: messagesScrollController,
            itemCount: messages.length,
            // shrinkWrap: true,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.only(
                    left: 14, right: 14, top: 5, bottom: 5),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment:
                        messages[index].messageType != "receiver"
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (messages[index].messageType == "receiver"
                              ? lighten(getThemeColor(context), 0.35)
                              : !getThemeStateIsLight()
                                  ? darken(getThemeColor(context), 0.1)
                                  : Theme.of(context).scaffoldBackgroundColor),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          messages[index].messageContent,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                color: (messages[index].messageType !=
                                        "receiver"
                                    ? lighten(getThemeColor(context), 0.35)
                                    : !getThemeStateIsLight()
                                        ? darken(getThemeColor(context), 0.5)
                                        : Theme.of(context)
                                            .scaffoldBackgroundColor),
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          messages[index].date,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: !getThemeStateIsLight()
                                      ? darken(getThemeColor(context), 0.5)
                                      : lighten(getThemeColor(context), 0.3)),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          isGradient: true,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight * 1.3),
            child: AppBarcomponent(
                appBarShadoow: const [
                  BoxShadow(
                      spreadRadius: 10,
                      blurRadius: 5000,
                      color: Color.fromARGB(74, 0, 0, 0),
                      offset: Offset(0, 10))
                ],
                elevation: 0,
                appBarColor: getThemeColor(context),
                isGradient: false,
                title: 'Dr Rachel',
                isBackAppBar: true,
                isTitleTowLines: false),
          )),
    );
  }
}
