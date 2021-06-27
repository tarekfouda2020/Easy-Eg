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
      durationInMilliseconds: 600,
      reverseDurationInMilliseconds: 600,
    ),
    AdaptiveRoute(page: ImageZoom),
    CustomRoute(page: SelectAuth,
      transitionsBuilder: TransitionsBuilders.zoomIn,
      durationInMilliseconds: 800,
      reverseDurationInMilliseconds: 800
    ),

    //customer pages
    AdaptiveRoute(page: Register),
    AdaptiveRoute(page: SelectAddress),
    CustomRoute(
      page: SelectDept,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 800,
        reverseDurationInMilliseconds: 800
    ),
    CustomRoute(
      page: Home,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 1000,
    ),
    AdaptiveRoute(page: OrderDetails),
    AdaptiveRoute<bool>(page: ProductDetails),
    CustomRoute(
      page: AddReservation,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 600,
      reverseDurationInMilliseconds: 600,
    ),
    AdaptiveRoute(page: ReservationSuccess),
    AdaptiveRoute(page: Products),
    AdaptiveRoute(page: Offers),
    AdaptiveRoute(page: Profile),
    AdaptiveRoute(page: RepeatedQuestions),
    AdaptiveRoute(page: ContactUs),
    AdaptiveRoute(page: Languages),
    AdaptiveRoute(page: Conversations),
    AdaptiveRoute(page: Competitions),
    AdaptiveRoute(page: Chats),
    CustomRoute<int>(
      page: Filter,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 600,
      reverseDurationInMilliseconds: 600,
    ),


    //provider pages
    AdaptiveRoute(page: ProviderRegister),
    AdaptiveRoute(page: CompleteRegister),
    AdaptiveRoute(page: FinishRegister),
    AdaptiveRoute(page: ProviderRegister),
    CustomRoute(
      page: ProviderHome,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 1000,
    ),
    AdaptiveRoute(page: ProviderOrderDetails),
    AdaptiveRoute(page: AcceptOrderSuccess),
    AdaptiveRoute(page: ProviderOffers),
    AdaptiveRoute(page: ProviderProfile),


  ],
)
class $AppRouter {}
