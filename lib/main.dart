import 'package:architecture/app/my_app.dart';
import 'package:architecture/features/post/presentation/bloc/activity_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'injections_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
 // await di.init();
  runApp(MyApp()
    /*MultiBlocProvider(
    providers:[
      BlocProvider<ActivityBloc>(create: (context) => sl<ActivityBloc>()),


    ],
    child:MyApp(),

  )*/);
}



