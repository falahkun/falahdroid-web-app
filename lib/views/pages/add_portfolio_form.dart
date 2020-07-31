part of 'pages.dart';

class AddPortfolioForm extends StatefulWidget {
  @override
  _AddPortfolioFormState createState() => _AddPortfolioFormState();
}

class _AddPortfolioFormState extends State<AddPortfolioForm> {
  List<String> files = [];
  TextEditingController _title = TextEditingController(); 
  TextEditingController _description = TextEditingController(); 
  TextEditingController _tags = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.bloc<PagesBloc>()..add(GotoDashboardPages());
        return false;
      },
      child: Scaffold(
        body: ListView(
          children: [
//            Container(child: ListView(
//              children: files.map((e) => Image.memory(e)).toList(),
//            ), height: 150,),
            MaterialButton(
              onPressed: () async {
                await pickImages().then((value) {
                  files.addAll(value);
                });
              },
              child: Text("Pick Images"),
            ),
            TextField()
          ],
        ),
      ),
    );
  }
}
