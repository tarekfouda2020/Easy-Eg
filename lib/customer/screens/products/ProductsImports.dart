import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/customer/models/Dtos/HomeMainModel.dart';
import 'package:base_flutter/customer/models/product_model.dart';
import 'package:base_flutter/customer/models/sub_category_model.dart';
import 'package:base_flutter/customer/resources/CustomerRepoImports.dart';
import 'package:base_flutter/customer/widgets/BuildNoItemFound.dart';
import 'package:base_flutter/customer/widgets/BuildProductItem.dart';
import 'package:base_flutter/customer/widgets/LinearContainer.dart';
import 'package:base_flutter/general/blocks/auth_cubit/auth_cubit.dart';
import 'package:base_flutter/general/utilities/localization/LocalizationMethods.dart';
import 'package:base_flutter/general/utilities/routers/RouterImports.gr.dart';
import 'package:base_flutter/general/widgets/DefaultAppBar.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'widgets/ProductsWidgetImports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'Products.dart';
part 'ProductsData.dart';