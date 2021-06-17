// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:base_flutter/customer/screens/add_reservation/AddReservationImports.dart'
    as _i20;
import 'package:base_flutter/customer/screens/contact_us/ContactUsImports.dart'
    as _i26;
import 'package:base_flutter/customer/screens/home/HomeImports.dart' as _i17;
import 'package:base_flutter/customer/screens/languages/LanguagesImports.dart'
    as _i27;
import 'package:base_flutter/customer/screens/offers/OffersImports.dart'
    as _i23;
import 'package:base_flutter/customer/screens/order_details/OrderDetailsImports.dart'
    as _i18;
import 'package:base_flutter/customer/screens/product_details/ProductDetailsImports.dart'
    as _i19;
import 'package:base_flutter/customer/screens/products/ProductsImports.dart'
    as _i22;
import 'package:base_flutter/customer/screens/profile/ProfileImports.dart'
    as _i24;
import 'package:base_flutter/customer/screens/repeated_questions/RepeatedQuestionsImports.dart'
    as _i25;
import 'package:base_flutter/customer/screens/reservation_success/ReservationSuccessImports.dart'
    as _i21;
import 'package:base_flutter/customer/screens/select_address/SelectAddressImports.dart'
    as _i15;
import 'package:base_flutter/customer/screens/select_dept/SelectDeptImports.dart'
    as _i16;
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
import 'package:base_flutter/general/screens/select_lang/SelectLangImports.dart'
    as _i8;
import 'package:base_flutter/general/screens/select_user/SelectUserImports.dart'
    as _i11;
import 'package:base_flutter/general/screens/splash/SplashImports.dart' as _i3;
import 'package:base_flutter/general/screens/terms/TermsImports.dart' as _i9;
import 'package:flutter/cupertino.dart' as _i28;
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
        durationInMilliseconds: 800,
        reverseDurationInMilliseconds: 800,
        opaque: true,
        barrierDismissible: false),
    ImageZoomRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ImageZoomRouteArgs>();
          return _i14.ImageZoom(images: args.images);
        }),
    SelectAddressRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i15.SelectAddress();
        }),
    SelectDeptRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i16.SelectDept();
        }),
    HomeRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<HomeRouteArgs>();
          return _i17.Home(color: args.color, tab: args.tab);
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 1000,
        opaque: true,
        barrierDismissible: false),
    OrderDetailsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OrderDetailsRouteArgs>();
          return _i18.OrderDetails(color: args.color);
        }),
    ProductDetailsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProductDetailsRouteArgs>();
          return _i19.ProductDetails(color: args.color);
        }),
    AddReservationRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AddReservationRouteArgs>();
          return _i20.AddReservation(color: args.color);
        },
        transitionsBuilder: _i1.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 800,
        reverseDurationInMilliseconds: 800,
        opaque: true,
        barrierDismissible: false),
    ReservationSuccessRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ReservationSuccessRouteArgs>();
          return _i21.ReservationSuccess(color: args.color);
        }),
    ProductsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProductsRouteArgs>();
          return _i22.Products(color: args.color);
        }),
    OffersRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OffersRouteArgs>();
          return _i23.Offers(color: args.color);
        }),
    ProfileRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileRouteArgs>();
          return _i24.Profile(color: args.color);
        }),
    RepeatedQuestionsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<RepeatedQuestionsRouteArgs>();
          return _i25.RepeatedQuestions(color: args.color);
        }),
    ContactUsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ContactUsRouteArgs>();
          return _i26.ContactUs(color: args.color);
        }),
    LanguagesRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<LanguagesRouteArgs>();
          return _i27.Languages(color: args.color);
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
        _i1.RouteConfig(LanguagesRoute.name, path: '/Languages')
      ];
}

class SplashRoute extends _i1.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({required _i28.GlobalKey<_i28.NavigatorState> navigatorKey})
      : super(name,
            path: '/', args: SplashRouteArgs(navigatorKey: navigatorKey));

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({required this.navigatorKey});

  final _i28.GlobalKey<_i28.NavigatorState> navigatorKey;
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
  TermsRoute({required _i28.Color color})
      : super(name, path: '/Terms', args: TermsRouteArgs(color: color));

  static const String name = 'TermsRoute';
}

class TermsRouteArgs {
  const TermsRouteArgs({required this.color});

  final _i28.Color color;
}

class AboutRoute extends _i1.PageRouteInfo<AboutRouteArgs> {
  AboutRoute({required _i28.Color color})
      : super(name, path: '/About', args: AboutRouteArgs(color: color));

  static const String name = 'AboutRoute';
}

class AboutRouteArgs {
  const AboutRouteArgs({required this.color});

  final _i28.Color color;
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
  ChangePasswordRoute({required _i28.Color color})
      : super(name,
            path: '/change-password',
            args: ChangePasswordRouteArgs(color: color));

  static const String name = 'ChangePasswordRoute';
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({required this.color});

  final _i28.Color color;
}

class ImageZoomRoute extends _i1.PageRouteInfo<ImageZoomRouteArgs> {
  ImageZoomRoute({required List<dynamic> images})
      : super(name,
            path: '/image-zoom', args: ImageZoomRouteArgs(images: images));

  static const String name = 'ImageZoomRoute';
}

class ImageZoomRouteArgs {
  const ImageZoomRouteArgs({required this.images});

  final List<dynamic> images;
}

class SelectAddressRoute extends _i1.PageRouteInfo {
  const SelectAddressRoute() : super(name, path: '/select-address');

  static const String name = 'SelectAddressRoute';
}

class SelectDeptRoute extends _i1.PageRouteInfo {
  const SelectDeptRoute() : super(name, path: '/select-dept');

  static const String name = 'SelectDeptRoute';
}

class HomeRoute extends _i1.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({required _i28.Color color, int tab = 4})
      : super(name, path: '/Home', args: HomeRouteArgs(color: color, tab: tab));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({required this.color, this.tab = 4});

  final _i28.Color color;

  final int tab;
}

class OrderDetailsRoute extends _i1.PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute({required _i28.Color color})
      : super(name,
            path: '/order-details', args: OrderDetailsRouteArgs(color: color));

  static const String name = 'OrderDetailsRoute';
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs({required this.color});

  final _i28.Color color;
}

class ProductDetailsRoute extends _i1.PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({required _i28.Color color})
      : super(name,
            path: '/product-details',
            args: ProductDetailsRouteArgs(color: color));

  static const String name = 'ProductDetailsRoute';
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({required this.color});

  final _i28.Color color;
}

class AddReservationRoute extends _i1.PageRouteInfo<AddReservationRouteArgs> {
  AddReservationRoute({required _i28.Color color})
      : super(name,
            path: '/add-reservation',
            args: AddReservationRouteArgs(color: color));

  static const String name = 'AddReservationRoute';
}

class AddReservationRouteArgs {
  const AddReservationRouteArgs({required this.color});

  final _i28.Color color;
}

class ReservationSuccessRoute
    extends _i1.PageRouteInfo<ReservationSuccessRouteArgs> {
  ReservationSuccessRoute({required _i28.Color color})
      : super(name,
            path: '/reservation-success',
            args: ReservationSuccessRouteArgs(color: color));

  static const String name = 'ReservationSuccessRoute';
}

class ReservationSuccessRouteArgs {
  const ReservationSuccessRouteArgs({required this.color});

  final _i28.Color color;
}

class ProductsRoute extends _i1.PageRouteInfo<ProductsRouteArgs> {
  ProductsRoute({required _i28.Color color})
      : super(name, path: '/Products', args: ProductsRouteArgs(color: color));

  static const String name = 'ProductsRoute';
}

class ProductsRouteArgs {
  const ProductsRouteArgs({required this.color});

  final _i28.Color color;
}

class OffersRoute extends _i1.PageRouteInfo<OffersRouteArgs> {
  OffersRoute({required _i28.Color color})
      : super(name, path: '/Offers', args: OffersRouteArgs(color: color));

  static const String name = 'OffersRoute';
}

class OffersRouteArgs {
  const OffersRouteArgs({required this.color});

  final _i28.Color color;
}

class ProfileRoute extends _i1.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({required _i28.Color color})
      : super(name, path: '/Profile', args: ProfileRouteArgs(color: color));

  static const String name = 'ProfileRoute';
}

class ProfileRouteArgs {
  const ProfileRouteArgs({required this.color});

  final _i28.Color color;
}

class RepeatedQuestionsRoute
    extends _i1.PageRouteInfo<RepeatedQuestionsRouteArgs> {
  RepeatedQuestionsRoute({required _i28.Color color})
      : super(name,
            path: '/repeated-questions',
            args: RepeatedQuestionsRouteArgs(color: color));

  static const String name = 'RepeatedQuestionsRoute';
}

class RepeatedQuestionsRouteArgs {
  const RepeatedQuestionsRouteArgs({required this.color});

  final _i28.Color color;
}

class ContactUsRoute extends _i1.PageRouteInfo<ContactUsRouteArgs> {
  ContactUsRoute({required _i28.Color color})
      : super(name,
            path: '/contact-us', args: ContactUsRouteArgs(color: color));

  static const String name = 'ContactUsRoute';
}

class ContactUsRouteArgs {
  const ContactUsRouteArgs({required this.color});

  final _i28.Color color;
}

class LanguagesRoute extends _i1.PageRouteInfo<LanguagesRouteArgs> {
  LanguagesRoute({required _i28.Color color})
      : super(name, path: '/Languages', args: LanguagesRouteArgs(color: color));

  static const String name = 'LanguagesRoute';
}

class LanguagesRouteArgs {
  const LanguagesRouteArgs({required this.color});

  final _i28.Color color;
}
