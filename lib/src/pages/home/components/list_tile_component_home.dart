import 'package:softtech_test/src/app/app_export.dart';

class ListTileComponentHomeScreen extends StatelessWidget {
  final int index;
  const ListTileComponentHomeScreen({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: index.isOdd ? Colors.black12 : Colors.black26,
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          Icons.person,
          color: index.isEven ? Colors.white : Colors.black,
        ),
        title: Text(
          'todo.todoText!',
          style: TextStyle(
            fontSize: 16,
            color: index.isEven ? Colors.white : Colors.black,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: index.isEven ? Colors.white : Colors.black,
            iconSize: 18,
            icon: const Icon(Icons.delete),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
