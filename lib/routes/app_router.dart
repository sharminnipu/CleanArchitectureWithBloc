import 'package:architecture/features/post/presentation/ui/post_page.dart';
import 'package:architecture/features/splash/splash_page.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page:SplashPage, initial: true),
    AutoRoute(page:PostPage),


  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter{}

