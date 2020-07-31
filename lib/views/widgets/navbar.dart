part of 'widgets.dart';

class NavBar extends StatelessWidget {
  final ScrollController currentController;
  final BuildContext ctx;

  const NavBar({Key key, this.currentController, this.ctx}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color1,
      height: 80,
      width: MediaQuery.of(context).size.width,
      padding: defaultEdgeLeftNRight,
      child: Row(
        children: [
          Container(width: 40,
            height: 60,
            child: GestureDetector(onTap: () {
//              context.bloc<PagesBloc>().add(prevPage);
            },child: Image.asset("assets/images/me.png", fit: BoxFit.fitWidth,)),),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: InkWell(child: Text("Home", style: defaultMedium.copyWith(fontSize: 16),), onTap: () {
              currentController.jumpTo(0.0);
            },),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: InkWell(child: Text("Portfolio", style: defaultMedium.copyWith(fontSize: 16),), onTap: () {},),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: InkWell(child: Text("About Me", style: defaultMedium.copyWith(fontSize: 16),), onTap: () {},),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: InkWell(child: Text("Contact Us", style: defaultMedium.copyWith(fontSize: 16),), onTap: () {},),
          ),
        ],
      ),
    );
  }
}
