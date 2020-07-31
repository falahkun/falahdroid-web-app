import 'dart:convert';

import 'package:falahdroid/blocs/pages/pages_bloc.dart';
import 'package:falahdroid/services/services.dart';
import 'package:falahdroid/utils/utils.dart';
import 'package:file_picker_web/file_picker_web.dart';
//import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart';


part 'landing_page.dart';
part 'login_page.dart';
part 'wrapper.dart';
part 'dashboard_page.dart';
part 'add_portfolio_form.dart';

Future<List<String>> pickImages() async {
  List<File> files = await FilePicker.getMultiFile(
    allowedExtensions: ['jpg', 'pdf', 'doc'],
  );
  List<String> _base64Images = [];
  for(var i in files) {
//    _base64Images.add();
  }
  return _base64Images;
}