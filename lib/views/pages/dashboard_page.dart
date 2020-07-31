part of 'pages.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hi Dashboard!"), actions: [
        IconButton(icon: Icon(Icons.exit_to_app), onPressed: () async {
          await AuthServices.signOut();
        },)
      ],),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4
        ),
        children: _itemMenuList.map((e) => Card(
          child: ListTile(title: Text(e.name), leading: Icon(e.icon), onTap: () {
            if(e.index == 0) {
              context.bloc<PagesBloc>()..add(GotoAddPFPages());
            }
          },),
        )).toList(),
      ),
    );
  }
}

List<Menu> _itemMenuList = [
  Menu(index: 0, color: Colors.amber, icon: MdiIcons.clipboardAccount, name: "Manage Portfolio"),
];

class Menu {
  final int index;
  final String name;
  final IconData icon;
  final Color color;

  Menu({this.index, this.name, this.icon, this.color});
}
