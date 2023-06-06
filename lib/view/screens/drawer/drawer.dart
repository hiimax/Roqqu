import '../../../res/import/import.dart';

class MySideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('Menu Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Handle menu item 1 click
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Handle menu item 2 click
            },
          ),
          // Add more list tiles for additional menu items
        ],
      ),
    );
  }
}
