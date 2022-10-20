import 'package:architecture/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays:
    [SystemUiOverlay.bottom, SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          //  statusBarColor: AppColor.scaffolderColor,
            statusBarIconBrightness: Brightness.dark
          //color set to transperent or set your own color
        )
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          canvasColor: Colors.transparent,
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue,
          brightness: Brightness.dark
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
