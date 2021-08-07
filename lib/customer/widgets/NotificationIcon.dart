import 'package:badges/badges.dart';
import 'package:base_flutter/general/blocks/notify_count_cubit/notify_count_cubit.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotifyIcon extends StatefulWidget {
  final bool active;
  const NotifyIcon({required this.active});
  @override
  _NotifyIconState createState() => _NotifyIconState();
}

class _NotifyIconState extends State<NotifyIcon> {
  @override
  Widget build(BuildContext context) {
    Color color = widget.active ? MyColors.white : Colors.white60;
    var count = context.watch<NotifyCountCubit>();
    return Badge(
        position: BadgePosition.topEnd(top: -8, end: 10),
        animationDuration: Duration(milliseconds: 300),
        animationType: BadgeAnimationType.scale,
        showBadge: count.state.count>0,
        badgeContent: Text(
          '${count.state.count}',
          style: TextStyle(fontSize: 8, color: Colors.white),
        ),
        child: Icon(
          Icons.notifications,
          color: color,
          size: 23,
        ));
  }
}
