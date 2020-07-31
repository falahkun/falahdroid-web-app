part of 'pages.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser _currentSession = Provider.of<FirebaseUser>(context);
    if (_currentSession == null && sessionId == null) {
      prevPage = GotoMainPages();
      context.bloc<PagesBloc>()..add(prevPage);
    } else {
      prevPage = GotoDashboardPages();
      context.bloc<PagesBloc>()..add(prevPage);
    }
    return BlocBuilder<PagesBloc, PagesState>(
      builder: (_, pageState) => (pageState is OnLoginPages)
          ? LoginPage()
          : (pageState is OnDashboardPages)
              ? DashboardPage()
              : (pageState is OnAddPFPages)
                  ? AddPortfolioForm()
                  : LandingPage(),
    );
  }
}
