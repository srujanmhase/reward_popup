library reward_popup;

import 'package:flutter/material.dart';
import 'package:reward_popup/view/custom_route.dart';
import 'package:reward_popup/view/page.dart';

///Show a reward popup by calling this method and passing appropriate child patameter
void showRewardPopup(
  BuildContext context, {
  required Widget child,
  Widget? precursorWidget,
}) {
  Navigator.of(context).push(
    CustomRoute(
      pageBuilder: (context, _, __) => RewardPopupPage(
        precursorWidget: precursorWidget,
        child: child,
      ),
    ),
  );
}
