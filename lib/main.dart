import 'package:falahdroid/blocs/pages/pages_bloc.dart';
import 'package:falahdroid/services/services.dart';
import 'package:falahdroid/utils/utils.dart';
import 'package:falahdroid/views/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.currentUser,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => PagesBloc(OnInitialPages()),),
        ],
        child: MaterialApp(
          title: app_name,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.pink,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: Wrapper(),
        ),
      ),
    );
  }
}