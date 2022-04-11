import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'app.dart';
import 'core/injection/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(Environment.prod);
  runApp(MyApp());
}
