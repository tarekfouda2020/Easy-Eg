import 'package:base_flutter/customer/models/MessageModel.dart';
import 'package:base_flutter/customer/widgets/LinearContainer.dart';
import 'package:base_flutter/general/blocks/user_cubit/user_cubit.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:base_flutter/general/models/UserModel.dart';
import 'package:base_flutter/general/utilities/localization/LocalizationMethods.dart';
import 'package:base_flutter/general/utilities/utils_functions/LifecycleEventHandler.dart';
import 'package:base_flutter/general/widgets/DefaultAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:signalr_core/signalr_core.dart';
import 'package:base_flutter/customer/resources/CustomerRepoImports.dart';
import 'widgets/ChatWidgetImports.dart';

part 'Chats.dart';
part 'ChatsData.dart';
