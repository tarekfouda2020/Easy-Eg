// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:base_flutter/customer/models/Dtos/HomeMainModel.dart' as _i45;
import 'package:base_flutter/customer/models/order_model.dart' as _i46;
import 'package:base_flutter/customer/models/product_model.dart' as _i47;
import 'package:base_flutter/customer/models/sub_category_model.dart' as _i48;
import 'package:base_flutter/customer/screens/add_reservation/AddReservationImports.dart'
    as _i22;
import 'package:base_flutter/customer/screens/chats/ChatsImports.dart' as _i33;
import 'package:base_flutter/customer/screens/competitions/CompetitionsImports.dart'
    as _i31;
import 'package:base_flutter/customer/screens/competitions_history/CompetitionsHistoryImports.dart'
    as _i43;
import 'package:base_flutter/customer/screens/contact_us/ContactUsImports.dart'
    as _i28;
import 'package:base_flutter/customer/screens/conversations/ConversationsImports.dart'
    as _i30;
import 'package:base_flutter/customer/screens/filter/FilterImports.dart'
    as _i34;
import 'package:base_flutter/customer/screens/home/HomeImports.dart' as _i19;
import 'package:base_flutter/customer/screens/languages/LanguagesImports.dart'
    as _i29;
import 'package:base_flutter/customer/screens/map_screen/MapScreenImports.dart'
    as _i32;
import 'package:base_flutter/customer/screens/offers/OffersImports.dart'
    as _i25;
import 'package:base_flutter/customer/screens/order_details/OrderDetailsImports.dart'
    as _i20;
import 'package:base_flutter/customer/screens/product_details/ProductDetailsImports.dart'
    as _i21;
import 'package:base_flutter/customer/screens/products/ProductsImports.dart'
    as _i24;
import 'package:base_flutter/customer/screens/profile/ProfileImports.dart'
    as _i26;
import 'package:base_flutter/customer/screens/register/RegisterImports.dart'
    as _i16;
import 'package:base_flutter/customer/screens/repeated_questions/RepeatedQuestionsImports.dart'
    as _i27;
import 'package:base_flutter/customer/screens/reservation_success/ReservationSuccessImports.dart'
    as _i23;
import 'package:base_flutter/customer/screens/select_address/SelectAddressImports.dart'
    as _i17;
import 'package:base_flutter/customer/screens/select_dept/SelectDeptImports.dart'
    as _i18;
import 'package:base_flutter/general/screens/about/AboutImports.dart' as _i10;
import 'package:base_flutter/general/screens/active_account/ActiveAccountImports.dart'
    as _i6;
import 'package:base_flutter/general/screens/change_password/ChangePasswordImports.dart'
    as _i13;
import 'package:base_flutter/general/screens/confirm_password/ConfirmPasswordImports.dart'
    as _i12;
import 'package:base_flutter/general/screens/forget_password/ForgetPasswordImports.dart'
    as _i5;
import 'package:base_flutter/general/screens/image_zoom/ImageZoom.dart' as _i14;
import 'package:base_flutter/general/screens/login/LoginImports.dart' as _i4;
import 'package:base_flutter/general/screens/reset_password/ResetPasswordImports.dart'
    as _i7;
import 'package:base_flutter/general/screens/select_auth/SelectAuthImports.dart'
    as _i15;
import 'package:base_flutter/general/screens/select_lang/SelectLangImports.dart'
    as _i8;
import 'package:base_flutter/general/screens/select_user/SelectUserImports.dart'
    as _i11;
import 'package:base_flutter/general/screens/splash/SplashImports.dart' as _i3;
import 'package:base_flutter/general/screens/terms/TermsImports.dart' as _i9;
import 'package:base_flutter/provider/models/Dtos/ProviderRegisterModel.dart'
    as _i49;
import 'package:base_flutter/provider/models/provider_order_model.dart' as _i50;
import 'package:base_flutter/provider/screens/accept_order_success/AcceptOrderSuccessImports.dart'
    as _i40;
import 'package:base_flutter/provider/screens/complete_register/CompleteRegisterImports.dart'
    as _i36;
import 'package:base_flutter/provider/screens/finish_register/FinishRegisterImports.dart'
    as _i37;
import 'package:base_flutter/provider/screens/provider_home/ProviderHomeImports.dart'
    as _i38;
import 'package:base_flutter/provider/screens/provider_offers/ProviderOffersImports.dart'
    as _i41;
import 'package:base_flutter/provider/screens/provider_order_details/ProviderOrderDetailsImports.dart'
    as _i39;
import 'package:base_flutter/provider/screens/provider_profile/ProviderProfileImports.dart'
    as _i42;
import 'package:base_flutter/provider/screens/provider_register/ProviderRegisterImports.dart'
    as _i35;
import 'package:flutter/cupertino.dart' as _i44;
import 'package:flutter/material.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SplashRouteArgs>();
          return _i3.Splash(navigatorKey: args.navigatorKey);
        }),
    LoginRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.Login();
        }),
    ForgetPasswordRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.ForgetPassword();
        }),
    ActiveAccountRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ActiveAccountRouteArgs>();
          return _i6.ActiveAccount(userId: args.userId);
        }),
    ResetPasswordRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ResetPasswordRouteArgs>();
          return _i7.ResetPassword(userId: args.userId);
        }),
    SelectLangRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.SelectLang();
        }),
    TermsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<TermsRouteArgs>();
          return _i9.Terms(color: args.color);
        }),
    AboutRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AboutRouteArgs>();
          return _i10.About(color: args.color);
        }),
    SelectUserRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i11.SelectUser();
        },
        transitionsBuilder: _i1.TransitionsBuilders.zoomIn,
        durationInMilliseconds: 1000,
        opaque: true,
        barrierDismissible: false),
    ConfirmPasswordRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i12.ConfirmPassword();
        }),
    ChangePasswordRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ChangePasswordRouteArgs>();
          return _i13.ChangePassword(color: args.color);
        },
        transitionsBuilder: _i1.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 600,
        reverseDurationInMilliseconds: 600,
        opaque: true,
        barrierDismissible: false),
    ImageZoomRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ImageZoomRouteArgs>();
          return _i14.ImageZoom(images: args.images, index: args.index);
        }),
    SelectAuthRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i15.SelectAuth();
        },
        transitionsBuilder: _i1.TransitionsBuilders.zoomIn,
        durationInMilliseconds: 800,
        reverseDurationInMilliseconds: 800,
        opaque: true,
        barrierDismissible: false),
    RegisterRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i16.Register();
        }),
    SelectAddressRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SelectAddressRouteArgs>(
              orElse: () => const SelectAddressRouteArgs());
          return _i17.SelectAddress(showBack: args.showBack);
        }),
    SelectDeptRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SelectDeptRouteArgs>();
          return _i18.SelectDept(model: args.model);
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 800,
        reverseDurationInMilliseconds: 800,
        opaque: true,
        barrierDismissible: false),
    HomeRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<HomeRouteArgs>();
          return _i19.Home(
              color: args.color,
              tab: args.tab,
              homeMainModel: args.homeMainModel);
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 1000,
        opaque: true,
        barrierDismissible: false),
    OrderDetailsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OrderDetailsRouteArgs>();
          return _i20.OrderDetails(
              color: args.color, id: args.id, model: args.model);
        }),
    ProductDetailsRoute.name: (routeData) => _i1.AdaptivePage<bool>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProductDetailsRouteArgs>();
          return _i21.ProductDetails(color: args.color, model: args.model);
        }),
    AddReservationRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AddReservationRouteArgs>();
          return _i22.AddReservation(color: args.color, model: args.model);
        },
        transitionsBuilder: _i1.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 600,
        reverseDurationInMilliseconds: 600,
        opaque: true,
        barrierDismissible: false),
    ReservationSuccessRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ReservationSuccessRouteArgs>();
          return _i23.ReservationSuccess(
              color: args.color, model: args.model, orderId: args.orderId);
        }),
    ProductsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProductsRouteArgs>();
          return _i24.Products(
              color: args.color,
              model: args.model,
              homeMainModel: args.homeMainModel);
        }),
    OffersRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OffersRouteArgs>();
          return _i25.Offers(color: args.color);
        }),
    ProfileRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileRouteArgs>();
          return _i26.Profile(color: args.color);
        }),
    RepeatedQuestionsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<RepeatedQuestionsRouteArgs>();
          return _i27.RepeatedQuestions(color: args.color);
        }),
    ContactUsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ContactUsRouteArgs>();
          return _i28.ContactUs(color: args.color);
        }),
    LanguagesRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<LanguagesRouteArgs>();
          return _i29.Languages(color: args.color);
        }),
    ConversationsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ConversationsRouteArgs>();
          return _i30.Conversations(color: args.color);
        }),
    CompetitionsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CompetitionsRouteArgs>();
          return _i31.Competitions(color: args.color);
        }),
    MapScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MapScreenRouteArgs>();
          return _i32.MapScreen(catId: args.catId, color: args.color);
        }),
    ChatsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ChatsRouteArgs>();
          return _i33.Chats(
              receiverId: args.receiverId,
              receiverName: args.receiverName,
              color: args.color,
              orderId: args.orderId);
        }),
    FilterRoute.name: (routeData) => _i1.CustomPage<int>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<FilterRouteArgs>();
          return _i34.Filter(color: args.color);
        },
        transitionsBuilder: _i1.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 600,
        reverseDurationInMilliseconds: 600,
        opaque: true,
        barrierDismissible: false),
    ProviderRegisterRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i35.ProviderRegister();
        }),
    CompleteRegisterRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CompleteRegisterRouteArgs>();
          return _i36.CompleteRegister(model: args.model);
        }),
    FinishRegisterRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<FinishRegisterRouteArgs>();
          return _i37.FinishRegister(model: args.model);
        }),
    ProviderHomeRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i38.ProviderHome();
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 1000,
        opaque: true,
        barrierDismissible: false),
    ProviderOrderDetailsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProviderOrderDetailsRouteArgs>();
          return _i39.ProviderOrderDetails(
              color: args.color, id: args.id, model: args.model);
        }),
    AcceptOrderSuccessRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AcceptOrderSuccessRouteArgs>();
          return _i40.AcceptOrderSuccess(color: args.color);
        }),
    ProviderOffersRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProviderOffersRouteArgs>();
          return _i41.ProviderOffers(color: args.color);
        }),
    ProviderProfileRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProviderProfileRouteArgs>();
          return _i42.ProviderProfile(color: args.color);
        }),
    CompetitionsHistoryRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CompetitionsHistoryRouteArgs>();
          return _i43.CompetitionsHistory(color: args.color);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(LoginRoute.name, path: '/Login'),
        _i1.RouteConfig(ForgetPasswordRoute.name, path: '/forget-password'),
        _i1.RouteConfig(ActiveAccountRoute.name, path: '/active-account'),
        _i1.RouteConfig(ResetPasswordRoute.name, path: '/reset-password'),
        _i1.RouteConfig(SelectLangRoute.name, path: '/select-lang'),
        _i1.RouteConfig(TermsRoute.name, path: '/Terms'),
        _i1.RouteConfig(AboutRoute.name, path: '/About'),
        _i1.RouteConfig(SelectUserRoute.name, path: '/select-user'),
        _i1.RouteConfig(ConfirmPasswordRoute.name, path: '/confirm-password'),
        _i1.RouteConfig(ChangePasswordRoute.name, path: '/change-password'),
        _i1.RouteConfig(ImageZoomRoute.name, path: '/image-zoom'),
        _i1.RouteConfig(SelectAuthRoute.name, path: '/select-auth'),
        _i1.RouteConfig(RegisterRoute.name, path: '/Register'),
        _i1.RouteConfig(SelectAddressRoute.name, path: '/select-address'),
        _i1.RouteConfig(SelectDeptRoute.name, path: '/select-dept'),
        _i1.RouteConfig(HomeRoute.name, path: '/Home'),
        _i1.RouteConfig(OrderDetailsRoute.name, path: '/order-details'),
        _i1.RouteConfig(ProductDetailsRoute.name, path: '/product-details'),
        _i1.RouteConfig(AddReservationRoute.name, path: '/add-reservation'),
        _i1.RouteConfig(ReservationSuccessRoute.name,
            path: '/reservation-success'),
        _i1.RouteConfig(ProductsRoute.name, path: '/Products'),
        _i1.RouteConfig(OffersRoute.name, path: '/Offers'),
        _i1.RouteConfig(ProfileRoute.name, path: '/Profile'),
        _i1.RouteConfig(RepeatedQuestionsRoute.name,
            path: '/repeated-questions'),
        _i1.RouteConfig(ContactUsRoute.name, path: '/contact-us'),
        _i1.RouteConfig(LanguagesRoute.name, path: '/Languages'),
        _i1.RouteConfig(ConversationsRoute.name, path: '/Conversations'),
        _i1.RouteConfig(CompetitionsRoute.name, path: '/Competitions'),
        _i1.RouteConfig(MapScreenRoute.name, path: '/map-screen'),
        _i1.RouteConfig(ChatsRoute.name, path: '/Chats'),
        _i1.RouteConfig(FilterRoute.name, path: '/Filter'),
        _i1.RouteConfig(ProviderRegisterRoute.name, path: '/provider-register'),
        _i1.RouteConfig(CompleteRegisterRoute.name, path: '/complete-register'),
        _i1.RouteConfig(FinishRegisterRoute.name, path: '/finish-register'),
        _i1.RouteConfig(ProviderRegisterRoute.name, path: '/provider-register'),
        _i1.RouteConfig(ProviderHomeRoute.name, path: '/provider-home'),
        _i1.RouteConfig(ProviderOrderDetailsRoute.name,
            path: '/provider-order-details'),
        _i1.RouteConfig(AcceptOrderSuccessRoute.name,
            path: '/accept-order-success'),
        _i1.RouteConfig(ProviderOffersRoute.name, path: '/provider-offers'),
        _i1.RouteConfig(ProviderProfileRoute.name, path: '/provider-profile'),
        _i1.RouteConfig(CompetitionsHistoryRoute.name,
            path: '/competitions-history')
      ];
}

class SplashRoute extends _i1.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({required _i44.GlobalKey<_i44.NavigatorState> navigatorKey})
      : super(name,
            path: '/', args: SplashRouteArgs(navigatorKey: navigatorKey));

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({required this.navigatorKey});

  final _i44.GlobalKey<_i44.NavigatorState> navigatorKey;
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '/Login');

  static const String name = 'LoginRoute';
}

class ForgetPasswordRoute extends _i1.PageRouteInfo {
  const ForgetPasswordRoute() : super(name, path: '/forget-password');

  static const String name = 'ForgetPasswordRoute';
}

class ActiveAccountRoute extends _i1.PageRouteInfo<ActiveAccountRouteArgs> {
  ActiveAccountRoute({required String userId})
      : super(name,
            path: '/active-account',
            args: ActiveAccountRouteArgs(userId: userId));

  static const String name = 'ActiveAccountRoute';
}

class ActiveAccountRouteArgs {
  const ActiveAccountRouteArgs({required this.userId});

  final String userId;
}

class ResetPasswordRoute extends _i1.PageRouteInfo<ResetPasswordRouteArgs> {
  ResetPasswordRoute({required String userId})
      : super(name,
            path: '/reset-password',
            args: ResetPasswordRouteArgs(userId: userId));

  static const String name = 'ResetPasswordRoute';
}

class ResetPasswordRouteArgs {
  const ResetPasswordRouteArgs({required this.userId});

  final String userId;
}

class SelectLangRoute extends _i1.PageRouteInfo {
  const SelectLangRoute() : super(name, path: '/select-lang');

  static const String name = 'SelectLangRoute';
}

class TermsRoute extends _i1.PageRouteInfo<TermsRouteArgs> {
  TermsRoute({required _i44.Color color})
      : super(name, path: '/Terms', args: TermsRouteArgs(color: color));

  static const String name = 'TermsRoute';
}

class TermsRouteArgs {
  const TermsRouteArgs({required this.color});

  final _i44.Color color;
}

class AboutRoute extends _i1.PageRouteInfo<AboutRouteArgs> {
  AboutRoute({required _i44.Color color})
      : super(name, path: '/About', args: AboutRouteArgs(color: color));

  static const String name = 'AboutRoute';
}

class AboutRouteArgs {
  const AboutRouteArgs({required this.color});

  final _i44.Color color;
}

class SelectUserRoute extends _i1.PageRouteInfo {
  const SelectUserRoute() : super(name, path: '/select-user');

  static const String name = 'SelectUserRoute';
}

class ConfirmPasswordRoute extends _i1.PageRouteInfo {
  const ConfirmPasswordRoute() : super(name, path: '/confirm-password');

  static const String name = 'ConfirmPasswordRoute';
}

class ChangePasswordRoute extends _i1.PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({required _i44.Color color})
      : super(name,
            path: '/change-password',
            args: ChangePasswordRouteArgs(color: color));

  static const String name = 'ChangePasswordRoute';
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({required this.color});

  final _i44.Color color;
}

class ImageZoomRoute extends _i1.PageRouteInfo<ImageZoomRouteArgs> {
  ImageZoomRoute({required List<dynamic> images, required int index})
      : super(name,
            path: '/image-zoom',
            args: ImageZoomRouteArgs(images: images, index: index));

  static const String name = 'ImageZoomRoute';
}

class ImageZoomRouteArgs {
  const ImageZoomRouteArgs({required this.images, required this.index});

  final List<dynamic> images;

  final int index;
}

class SelectAuthRoute extends _i1.PageRouteInfo {
  const SelectAuthRoute() : super(name, path: '/select-auth');

  static const String name = 'SelectAuthRoute';
}

class RegisterRoute extends _i1.PageRouteInfo {
  const RegisterRoute() : super(name, path: '/Register');

  static const String name = 'RegisterRoute';
}

class SelectAddressRoute extends _i1.PageRouteInfo<SelectAddressRouteArgs> {
  SelectAddressRoute({bool showBack = true})
      : super(name,
            path: '/select-address',
            args: SelectAddressRouteArgs(showBack: showBack));

  static const String name = 'SelectAddressRoute';
}

class SelectAddressRouteArgs {
  const SelectAddressRouteArgs({this.showBack = true});

  final bool showBack;
}

class SelectDeptRoute extends _i1.PageRouteInfo<SelectDeptRouteArgs> {
  SelectDeptRoute({required _i45.HomeMainModel model})
      : super(name,
            path: '/select-dept', args: SelectDeptRouteArgs(model: model));

  static const String name = 'SelectDeptRoute';
}

class SelectDeptRouteArgs {
  const SelectDeptRouteArgs({required this.model});

  final _i45.HomeMainModel model;
}

class HomeRoute extends _i1.PageRouteInfo<HomeRouteArgs> {
  HomeRoute(
      {required _i44.Color color,
      int tab = 4,
      required _i45.HomeMainModel homeMainModel})
      : super(name,
            path: '/Home',
            args: HomeRouteArgs(
                color: color, tab: tab, homeMainModel: homeMainModel));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs(
      {required this.color, this.tab = 4, required this.homeMainModel});

  final _i44.Color color;

  final int tab;

  final _i45.HomeMainModel homeMainModel;
}

class OrderDetailsRoute extends _i1.PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute(
      {required _i44.Color color, required int id, _i46.OrderModel? model})
      : super(name,
            path: '/order-details',
            args: OrderDetailsRouteArgs(color: color, id: id, model: model));

  static const String name = 'OrderDetailsRoute';
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs(
      {required this.color, required this.id, this.model});

  final _i44.Color color;

  final int id;

  final _i46.OrderModel? model;
}

class ProductDetailsRoute extends _i1.PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute(
      {required _i44.Color color, required _i47.ProductModel model})
      : super(name,
            path: '/product-details',
            args: ProductDetailsRouteArgs(color: color, model: model));

  static const String name = 'ProductDetailsRoute';
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({required this.color, required this.model});

  final _i44.Color color;

  final _i47.ProductModel model;
}

class AddReservationRoute extends _i1.PageRouteInfo<AddReservationRouteArgs> {
  AddReservationRoute(
      {required _i44.Color color, required _i47.ProductModel model})
      : super(name,
            path: '/add-reservation',
            args: AddReservationRouteArgs(color: color, model: model));

  static const String name = 'AddReservationRoute';
}

class AddReservationRouteArgs {
  const AddReservationRouteArgs({required this.color, required this.model});

  final _i44.Color color;

  final _i47.ProductModel model;
}

class ReservationSuccessRoute
    extends _i1.PageRouteInfo<ReservationSuccessRouteArgs> {
  ReservationSuccessRoute(
      {required _i44.Color color,
      required _i47.ProductModel model,
      required int orderId})
      : super(name,
            path: '/reservation-success',
            args: ReservationSuccessRouteArgs(
                color: color, model: model, orderId: orderId));

  static const String name = 'ReservationSuccessRoute';
}

class ReservationSuccessRouteArgs {
  const ReservationSuccessRouteArgs(
      {required this.color, required this.model, required this.orderId});

  final _i44.Color color;

  final _i47.ProductModel model;

  final int orderId;
}

class ProductsRoute extends _i1.PageRouteInfo<ProductsRouteArgs> {
  ProductsRoute(
      {required _i44.Color color,
      required _i48.SubCategoryModel model,
      required _i45.HomeMainModel homeMainModel})
      : super(name,
            path: '/Products',
            args: ProductsRouteArgs(
                color: color, model: model, homeMainModel: homeMainModel));

  static const String name = 'ProductsRoute';
}

class ProductsRouteArgs {
  const ProductsRouteArgs(
      {required this.color, required this.model, required this.homeMainModel});

  final _i44.Color color;

  final _i48.SubCategoryModel model;

  final _i45.HomeMainModel homeMainModel;
}

class OffersRoute extends _i1.PageRouteInfo<OffersRouteArgs> {
  OffersRoute({required _i44.Color color})
      : super(name, path: '/Offers', args: OffersRouteArgs(color: color));

  static const String name = 'OffersRoute';
}

class OffersRouteArgs {
  const OffersRouteArgs({required this.color});

  final _i44.Color color;
}

class ProfileRoute extends _i1.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({required _i44.Color color})
      : super(name, path: '/Profile', args: ProfileRouteArgs(color: color));

  static const String name = 'ProfileRoute';
}

class ProfileRouteArgs {
  const ProfileRouteArgs({required this.color});

  final _i44.Color color;
}

class RepeatedQuestionsRoute
    extends _i1.PageRouteInfo<RepeatedQuestionsRouteArgs> {
  RepeatedQuestionsRoute({required _i44.Color color})
      : super(name,
            path: '/repeated-questions',
            args: RepeatedQuestionsRouteArgs(color: color));

  static const String name = 'RepeatedQuestionsRoute';
}

class RepeatedQuestionsRouteArgs {
  const RepeatedQuestionsRouteArgs({required this.color});

  final _i44.Color color;
}

class ContactUsRoute extends _i1.PageRouteInfo<ContactUsRouteArgs> {
  ContactUsRoute({required _i44.Color color})
      : super(name,
            path: '/contact-us', args: ContactUsRouteArgs(color: color));

  static const String name = 'ContactUsRoute';
}

class ContactUsRouteArgs {
  const ContactUsRouteArgs({required this.color});

  final _i44.Color color;
}

class LanguagesRoute extends _i1.PageRouteInfo<LanguagesRouteArgs> {
  LanguagesRoute({required _i44.Color color})
      : super(name, path: '/Languages', args: LanguagesRouteArgs(color: color));

  static const String name = 'LanguagesRoute';
}

class LanguagesRouteArgs {
  const LanguagesRouteArgs({required this.color});

  final _i44.Color color;
}

class ConversationsRoute extends _i1.PageRouteInfo<ConversationsRouteArgs> {
  ConversationsRoute({required _i44.Color color})
      : super(name,
            path: '/Conversations', args: ConversationsRouteArgs(color: color));

  static const String name = 'ConversationsRoute';
}

class ConversationsRouteArgs {
  const ConversationsRouteArgs({required this.color});

  final _i44.Color color;
}

class CompetitionsRoute extends _i1.PageRouteInfo<CompetitionsRouteArgs> {
  CompetitionsRoute({required _i44.Color color})
      : super(name,
            path: '/Competitions', args: CompetitionsRouteArgs(color: color));

  static const String name = 'CompetitionsRoute';
}

class CompetitionsRouteArgs {
  const CompetitionsRouteArgs({required this.color});

  final _i44.Color color;
}

class MapScreenRoute extends _i1.PageRouteInfo<MapScreenRouteArgs> {
  MapScreenRoute({required int catId, required _i44.Color color})
      : super(name,
            path: '/map-screen',
            args: MapScreenRouteArgs(catId: catId, color: color));

  static const String name = 'MapScreenRoute';
}

class MapScreenRouteArgs {
  const MapScreenRouteArgs({required this.catId, required this.color});

  final int catId;

  final _i44.Color color;
}

class ChatsRoute extends _i1.PageRouteInfo<ChatsRouteArgs> {
  ChatsRoute(
      {required String receiverId,
      required String receiverName,
      required _i44.Color color,
      required int orderId})
      : super(name,
            path: '/Chats',
            args: ChatsRouteArgs(
                receiverId: receiverId,
                receiverName: receiverName,
                color: color,
                orderId: orderId));

  static const String name = 'ChatsRoute';
}

class ChatsRouteArgs {
  const ChatsRouteArgs(
      {required this.receiverId,
      required this.receiverName,
      required this.color,
      required this.orderId});

  final String receiverId;

  final String receiverName;

  final _i44.Color color;

  final int orderId;
}

class FilterRoute extends _i1.PageRouteInfo<FilterRouteArgs> {
  FilterRoute({required _i44.Color color})
      : super(name, path: '/Filter', args: FilterRouteArgs(color: color));

  static const String name = 'FilterRoute';
}

class FilterRouteArgs {
  const FilterRouteArgs({required this.color});

  final _i44.Color color;
}

class ProviderRegisterRoute extends _i1.PageRouteInfo {
  const ProviderRegisterRoute() : super(name, path: '/provider-register');

  static const String name = 'ProviderRegisterRoute';
}

class CompleteRegisterRoute
    extends _i1.PageRouteInfo<CompleteRegisterRouteArgs> {
  CompleteRegisterRoute({required _i49.ProviderRegisterModel model})
      : super(name,
            path: '/complete-register',
            args: CompleteRegisterRouteArgs(model: model));

  static const String name = 'CompleteRegisterRoute';
}

class CompleteRegisterRouteArgs {
  const CompleteRegisterRouteArgs({required this.model});

  final _i49.ProviderRegisterModel model;
}

class FinishRegisterRoute extends _i1.PageRouteInfo<FinishRegisterRouteArgs> {
  FinishRegisterRoute({required _i49.ProviderRegisterModel model})
      : super(name,
            path: '/finish-register',
            args: FinishRegisterRouteArgs(model: model));

  static const String name = 'FinishRegisterRoute';
}

class FinishRegisterRouteArgs {
  const FinishRegisterRouteArgs({required this.model});

  final _i49.ProviderRegisterModel model;
}

class ProviderHomeRoute extends _i1.PageRouteInfo {
  const ProviderHomeRoute() : super(name, path: '/provider-home');

  static const String name = 'ProviderHomeRoute';
}

class ProviderOrderDetailsRoute
    extends _i1.PageRouteInfo<ProviderOrderDetailsRouteArgs> {
  ProviderOrderDetailsRoute(
      {required _i44.Color color,
      required int id,
      _i50.ProviderOrderModel? model})
      : super(name,
            path: '/provider-order-details',
            args: ProviderOrderDetailsRouteArgs(
                color: color, id: id, model: model));

  static const String name = 'ProviderOrderDetailsRoute';
}

class ProviderOrderDetailsRouteArgs {
  const ProviderOrderDetailsRouteArgs(
      {required this.color, required this.id, this.model});

  final _i44.Color color;

  final int id;

  final _i50.ProviderOrderModel? model;
}

class AcceptOrderSuccessRoute
    extends _i1.PageRouteInfo<AcceptOrderSuccessRouteArgs> {
  AcceptOrderSuccessRoute({required _i44.Color color})
      : super(name,
            path: '/accept-order-success',
            args: AcceptOrderSuccessRouteArgs(color: color));

  static const String name = 'AcceptOrderSuccessRoute';
}

class AcceptOrderSuccessRouteArgs {
  const AcceptOrderSuccessRouteArgs({required this.color});

  final _i44.Color color;
}

class ProviderOffersRoute extends _i1.PageRouteInfo<ProviderOffersRouteArgs> {
  ProviderOffersRoute({required _i44.Color color})
      : super(name,
            path: '/provider-offers',
            args: ProviderOffersRouteArgs(color: color));

  static const String name = 'ProviderOffersRoute';
}

class ProviderOffersRouteArgs {
  const ProviderOffersRouteArgs({required this.color});

  final _i44.Color color;
}

class ProviderProfileRoute extends _i1.PageRouteInfo<ProviderProfileRouteArgs> {
  ProviderProfileRoute({required _i44.Color color})
      : super(name,
            path: '/provider-profile',
            args: ProviderProfileRouteArgs(color: color));

  static const String name = 'ProviderProfileRoute';
}

class ProviderProfileRouteArgs {
  const ProviderProfileRouteArgs({required this.color});

  final _i44.Color color;
}

class CompetitionsHistoryRoute
    extends _i1.PageRouteInfo<CompetitionsHistoryRouteArgs> {
  CompetitionsHistoryRoute({required _i44.Color color})
      : super(name,
            path: '/competitions-history',
            args: CompetitionsHistoryRouteArgs(color: color));

  static const String name = 'CompetitionsHistoryRoute';
}

class CompetitionsHistoryRouteArgs {
  const CompetitionsHistoryRouteArgs({required this.color});

  final _i44.Color color;
}
