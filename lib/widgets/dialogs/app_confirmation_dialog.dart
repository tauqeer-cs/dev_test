import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
//import 'package:line_icons/line_icons.dart';

import '../../theme/theme.dart';

class AppConfirmationDialog extends StatelessWidget {
  final Function()? onConfirm, onCancel;
  final String title, subtitle;
  final String? confirmText, cancelText;
  final bool isWarning;
  final bool confirmPopNavigator;
  final bool showCloseButton;
  final Widget? child;
  final Widget? customImage;

  final Color? backgroundColor;

  const AppConfirmationDialog({
    Key? key,
    this.onConfirm,
    this.onCancel,
    required this.title,
    required this.subtitle,
    this.confirmText,
    this.showCloseButton = true,
    this.isWarning = false,
    this.confirmPopNavigator = true,
    this.cancelText,
    this.customImage,
    this.child, this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      backgroundColor: backgroundColor,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      contentPadding: const EdgeInsets.all(16),
      content: Stack(
        children: [
          // Visibility(
          //   visible: customImage == null,
          //   child: Align(
          //     alignment: Alignment.topCenter,
          //     child: Transform.translate(
          //       offset: const Offset(0, -80),
          //       child: Lottie.asset(
          //         isWarning
          //             ? 'assets/animations/warning.json'
          //             : 'assets/animations/question.json',
          //         repeat: false,
          //         width: 150.w,
          //         height: 150.w,
          //       ),
          //     ),
          //   ),
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Visibility(
                visible: showCloseButton,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    child: const Icon(
                      LineIcons.times,
                      size: 25,
                    ),
                    onTap: () {

                    },
                  ),
                ),
              ),
              customImage != null ? customImage! : const SizedBox.shrink(),
              //SizedBox(height: customImage == null ? 70.w : 20.w),
              Text(
                title,
                textAlign: TextAlign.left,
                style: kHugeSemiBold,
              ),
              kVerticalSpacerSmall,
              Text(
                subtitle,
                textAlign: TextAlign.left,
                style: kMediumRegular,
              ),
              kVerticalSpacer,
              Visibility(
                visible: child != null,
                child: child ?? const SizedBox(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: isWarning
                        ? OutlinedButton(
                            onPressed: () {
                              onPressed(context);
                            },
                            child: Text(
                              confirmText ?? "bestätigen",
                              style: kMediumSemiBold,
                            ),
                          )
                        : ElevatedButton(
                            onPressed: () {
                              onPressed(context);
                            },
                            child: Text(
                              confirmText ?? "bestätigen",
                              style:
                                  kMediumSemiBold.copyWith(color: Colors.white),
                            ),
                          ),
                  ),
                  cancelText == null
                      ? const SizedBox.shrink()
                      : kHorizontalSpacer,
                  cancelText == null
                      ? const SizedBox.shrink()
                      : Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: isWarning
                                        ? Styles.kPrimaryColor
                                        : Colors.redAccent,
                                  ),
                                  onPressed: () {


                                  },
                                  child: Text(
                                    cancelText!,
                                    style: kMediumSemiBold.copyWith(
                                      color: isWarning
                                          ? Colors.white
                                          : Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void onPressed(BuildContext context) {
    if (onConfirm != null) onConfirm!();
    if (confirmPopNavigator) {
    }
  }
}

class AppConfirmationDialogOutlined extends StatelessWidget {
  final Function()? onConfirm, onCancel;
  final String title, subtitle;
  final String? confirmText, cancelText;
  final bool isWarning;
  final bool confirmPopNavigator;
  final bool showCloseButton;
  final Widget? child;
  final Widget? customImage;

  final Color? backgroundColor;

  const AppConfirmationDialogOutlined({
    Key? key,
    this.onConfirm,
    this.onCancel,
    required this.title,
    required this.subtitle,
    this.confirmText,
    this.showCloseButton = true,
    this.isWarning = false,
    this.confirmPopNavigator = true,
    this.cancelText,
    this.customImage,
    this.child, this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      backgroundColor: backgroundColor,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      contentPadding: const EdgeInsets.all(16),
      content: Stack(
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Visibility(
                visible: showCloseButton,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    child: const Icon(
                      LineIcons.times,
                      size: 25,
                    ),
                    onTap: () {
                    },
                  ),
                ),
              ),
              customImage != null ? customImage! : const SizedBox.shrink(),
              //SizedBox(height: customImage == null ? 70.w : 20.w),
              Text(
                title,
                textAlign: TextAlign.left,
                style: kHugeMedium,
              ),
              kVerticalSpacerSmall,
              Text(
                subtitle,
                textAlign: TextAlign.left,
                style: kMediumRegular,
              ),
              kVerticalSpacer,
              Visibility(
                visible: child != null,
                child: child ?? const SizedBox(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  cancelText == null
                      ? const SizedBox.shrink()
                      : Expanded(
                    child: Row(
                      children: [
                         Expanded(
                          child:  OutlinedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent), // Replace with your desired background color
                            ),
                            onPressed: () {

                              if (onCancel != null) onCancel!();
                            },
                            child: Text(
                              cancelText!,
                              style: kMediumSemiBold.copyWith(
                                color: Styles.kPrimaryColor,
                              ),
                            ),
                          )
                           ,
                        ),
                      ],
                    ),
                  ),

                  cancelText == null
                      ? const SizedBox.shrink()
                      : kHorizontalSpacer,
                  Expanded(
                    child: isWarning
                        ? OutlinedButton(
                      onPressed: () {
                        onPressed(context);
                      },
                      child: Text(
                        confirmText ?? "bestätigen",
                        style: kMediumSemiBold,
                      ),
                    )
                        : ElevatedButton(
                      onPressed: () {
                        onPressed(context);
                      },
                      child: Text(
                        confirmText ?? "bestätigen",
                        style:
                        kMediumSemiBold.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void onPressed(BuildContext context) {
    if (onConfirm != null) onConfirm!();
    if (confirmPopNavigator) {
    }
  }
}
