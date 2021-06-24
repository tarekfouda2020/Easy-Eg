import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/customer/models/product_model.dart';
import 'package:base_flutter/customer/screens/product_details/tabs/gallery/GalleryImports.dart';
import 'package:base_flutter/customer/screens/product_details/tabs/information/InformationImports.dart';
import 'package:base_flutter/customer/screens/product_details/tabs/social/SocialImports.dart';
import 'package:base_flutter/general/blocks/generic_cubit/generic_cubit.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:base_flutter/general/utilities/localization/LocalizationMethods.dart';
import 'package:base_flutter/general/utilities/routers/RouterImports.gr.dart';
import 'package:base_flutter/general/widgets/CachedImage.dart';
import 'package:base_flutter/general/widgets/DefaultButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../ProductDetailsImports.dart';


part 'BuildAppBar.dart';
part 'BuildSwiperView.dart';
part 'BottomWaveClipper.dart';
part 'BuildTabBar.dart';
part 'BuildTabBarView.dart';
part 'BuildReservationButton.dart';