import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/widgets.dart';

class SplashView extends StatefulWidget {
  ///  Background color of the splash view.
  final Color? backgroundColor;

  /// Logo of the splash view.
  final Widget? logo;

  /// Title of the splash view.
  final Widget? title;

  /// Subtitle of the splash view.
  final Widget? subtitle;

  /// Loading indicator of the splash view.
  final Widget? loadingIndicator;

  /// Show loading indicator on the bottom of the splash view.
  final bool bottomLoading;

  /// Show and hide app status/navigation bar on the splash view.
  final bool showStatusBar;

  /// Gradient background of the splash view.
  final Gradient? gradient;

  /// Duration of redirecting to the next page.
  final Duration? duration;

  /// Background image of the splash view.
  final BackgroundImageDecoration? backgroundImageDecoration;

  /// [Done] widget to redirect to the next page.
  final Done? done;
  const SplashView({
    Key? key,
    this.backgroundImageDecoration,
    this.backgroundColor,
    this.gradient,
    this.logo,
    this.title,
    this.subtitle,
    this.loadingIndicator,
    this.bottomLoading = false,
    this.duration = const Duration(seconds: 3),
    this.done,
    this.showStatusBar = false,
  }) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  /// [hideStatusBar] is used to hide status bar on the splash view.
  hideStatusBar(bool value) {
    if (value == false) {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [],
      );
    } else {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [
          SystemUiOverlay.bottom,
          SystemUiOverlay.top,
        ],
      );
    }
  }

  @override
  void initState() {
    hideStatusBar(widget.showStatusBar);
    Future.delayed(widget.duration!,
        () => Navigator.of(context).pushReplacement(widget.done!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: widget.gradient,
          color: widget.backgroundColor,
          image: widget.backgroundImageDecoration,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (widget.bottomLoading) ? const Spacer() : const SizedBox(),
            widget.logo ?? const SizedBox(),
            widget.title ?? const SizedBox(),
            widget.subtitle ?? const SizedBox(),
            (widget.bottomLoading) ? const Spacer() : const SizedBox(),
            widget.loadingIndicator ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
