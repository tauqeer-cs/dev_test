import 'package:dev_text/theme/spacer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/styles.dart';
import '../theme/typography.dart';
import 'app_logo.dart';
import 'custom_icon_button.dart';

class AppAppBarWeb extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool canBack, centerTitle;
  final Widget? child;
  final Function()? onAction;
  final double? height;
  final Widget? flexibleWidget;
  final Color? titleColor;

  final bool hideBack;

  final bool overrideInnerHeight;

  const AppAppBarWeb({
    Key? key,
    this.child,
    this.title,
    this.onAction,
    this.hideBack = false,
    this.centerTitle = true,
    this.canBack = true,
    this.height,
    this.flexibleWidget,
    this.overrideInnerHeight = false,
    this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);
    final bool canPop = parentRoute?.canPop ?? false;
    return PreferredSize(
      preferredSize: Size.fromHeight(height ?? 60.h),
      child: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: overrideInnerHeight ? (height ?? 60.h) : 60.h,
        centerTitle: centerTitle,
        leading: hideBack
            ? Container()
            : canPop
                ? overrideInnerHeight
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () => Navigator.pop(context),
                            child: Icon(
                              Icons.chevron_left,
                              size: 35,
                              color: Styles.kPrimaryColor,
                            ),
                          ),
                        ),
                      )
                    : InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.chevron_left,
                          size: 35,
                          color: Styles.kPrimaryColor,
                        ),
                      )
                : null,
        actions: const [
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.menu),
          // ),
        ],
        flexibleSpace: Align(
          alignment: Alignment.bottomLeft,
          child: flexibleWidget,
        ),
        title: Row(
          children: [
            const AppLogoWidget(),
            Container(
              padding: EdgeInsets.only(left: canPop ? 0 : 8.0, right: 0),
              child: Text(
                title!,
                style: kHugeHeavy.copyWith(color: titleColor),
                textScaleFactor: 1,
              ),
            ),
            Expanded(
              child: Container(),
            ),
            kHorizontalSpacerSmall,
            Icon(Icons.favorite_border),
            kHorizontalSpacerMini,
            Icon(Icons.notifications_active_outlined),
            kHorizontalSpacerMini,
            CustomIconButton(
              iconData: Icons.shopping_cart_outlined,
              text: 'Cart',
              onPressed: () {},
            ),
            kHorizontalSpacerMini,
            CustomIconButton(
              text: 'Sign In',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? 125.h);
}
