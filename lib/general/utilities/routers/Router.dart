part of 'RouterImports.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    //general routes
    AdaptiveRoute(page: Splash, initial: true),
    AdaptiveRoute(
      page: Login,
    ),
    AdaptiveRoute(page: ForgetPassword),
    AdaptiveRoute(page: ActiveAccount),
    AdaptiveRoute(page: ResetPassword),
    AdaptiveRoute(page: SelectLang),
    AdaptiveRoute(page: Terms),
    AdaptiveRoute(page: About),
    CustomRoute(
        page: SelectUser,
        transitionsBuilder: TransitionsBuilders.zoomIn,
        durationInMilliseconds: 1000,
    ),
    AdaptiveRoute(page: ConfirmPassword),
    CustomRoute(
      page: ChangePassword,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 800,
      reverseDurationInMilliseconds: 800,
    ),
    AdaptiveRoute(page: ImageZoom),

    //customer pages
    AdaptiveRoute(page: SelectAddress),
    AdaptiveRoute(page: SelectDept),
    CustomRoute(
      page: Home,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 1000,
    ),
    AdaptiveRoute(page: OrderDetails),
    AdaptiveRoute(page: ProductDetails),
    CustomRoute(
      page: AddReservation,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 800,
      reverseDurationInMilliseconds: 800,
    ),
    AdaptiveRoute(page: ReservationSuccess),
    AdaptiveRoute(page: Products),
    AdaptiveRoute(page: Offers),
    AdaptiveRoute(page: Profile),
    AdaptiveRoute(page: RepeatedQuestions),
    AdaptiveRoute(page: ContactUs),

  ],
)
class $AppRouter {}
