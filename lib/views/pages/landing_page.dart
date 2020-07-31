part of 'pages.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: color1,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              color: color1,
              child: ListView(
                controller: _controller,
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Hi I'm Falah Atharid\nI flutter programmer.",
                            style: defaultMedium.copyWith(
                                fontSize: 35, color: color3),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Let's collaborate on your next\napplication project",
                            style: defaultMedium.copyWith(
                                fontSize: 20, color: color4),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              MaterialButton(
                                highlightElevation: 0,
                                hoverElevation: 0,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                onPressed: () {},
                                height: 35,
                                minWidth: 150,
                                child: Text(
                                  "Contact Me",
                                  style: defaultMedium.copyWith(
                                      fontSize: 14, color: color1),
                                ),
                                color: color3,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              MaterialButton(
                                highlightElevation: 0,
                                hoverElevation: 0,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 3, color: color3),
                                    borderRadius: BorderRadius.circular(25)),
                                onPressed: () {
                                  print("pressed");
                                },
                                height: 35,
                                minWidth: 150,
                                child: Text(
                                  "My Project",
                                  style: defaultMedium.copyWith(
                                      fontSize: 14, color: color3),
                                ),
                                color: color1,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                    MdiIcons.github,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    MdiIcons.twitter,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    MdiIcons.facebook,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    MdiIcons.instagram,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {}),
                            ],
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Image.asset(
                        "assets/images/me.png",
                        height: 356,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 700,
                  ),
                ],
              ),
            ),
            Align(
              child: Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                    color: color1,
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    padding: defaultEdgeLeftNRight,
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 60,
                          child: GestureDetector(
                              onTap: () {
                                print('Tapped');
                                context.bloc<PagesBloc>()..add(GotoLoginPages());
                              },
                              child: Image.asset(
                                "assets/images/me.png",
                                fit: BoxFit.fitWidth,
                              )),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35.0),
                          child: InkWell(
                            child: Text(
                              "Home",
                              style: defaultMedium.copyWith(fontSize: 16),
                            ),
                            onTap: () {
                              _controller.jumpTo(0.0);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35.0),
                          child: InkWell(
                            child: Text(
                              "Portfolio",
                              style: defaultMedium.copyWith(fontSize: 16),
                            ),
                            onTap: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35.0),
                          child: InkWell(
                            child: Text(
                              "About Me",
                              style: defaultMedium.copyWith(fontSize: 16),
                            ),
                            onTap: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35.0),
                          child: InkWell(
                            child: Text(
                              "Contact Us",
                              style: defaultMedium.copyWith(fontSize: 16),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  )),
              alignment: Alignment.topCenter,
            ),

            ///Nav Bar

            ///
          ],
        ));
  }
}
