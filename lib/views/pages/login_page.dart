part of 'pages.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.bloc<PagesBloc>()..add(GotoMainPages());
        return false;
      },
      child: Scaffold(
        backgroundColor: color1,
        body: Row(
          children: [
            Spacer(
              flex: 1,
            ),

            ///content
            Container(
              width: 250,
              color: Colors.white.withOpacity(0.5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome\nback",
                    style:
                        defaultMedium.copyWith(fontSize: 24, color: Colors.black),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    controller: _email,
                    style: defaultLight.copyWith(
                        color: Colors.black87, fontSize: 14),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: "Email",
                    ),
                  ),
                  TextField(
                    controller: _password,
                    obscureText: true,
                    style: defaultLight.copyWith(
                        color: Colors.black87, fontSize: 14),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: "Password",
                    ),
                  ),
                  MaterialButton(
                    onPressed: () async {
                      await AuthServices.signIn(context, email: _email.text, password: _password.text).then((value) {
                        WebStorage _webStorage = WebStorage.instance;
                        _webStorage.sessionId = value;
                      });
                      setState((){});
                    },
                    child: Text("Sign In"),
                  )
                ],
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
