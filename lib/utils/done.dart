import 'package:flutter/cupertino.dart';

class Done extends PageRouteBuilder {
  /// Redirect to the next page when the loading is finished.
  final Widget done;

  /// The duration the transition going forwards.
  final Duration? animationDuration;

  /// [Curves], a collection of common animation easing curves.
  final Curve? curve;
  Done(
    this.done, {
    this.animationDuration = const Duration(seconds: 1),
    this.curve = Curves.easeOut,
  }) : super(
          transitionDuration: animationDuration!,
          transitionsBuilder: (context, animation, secondAnimation, child) {
            animation = CurvedAnimation(
              parent: animation,
              curve: curve!,
            );
            return ScaleTransition(
              scale: animation,
              alignment: Alignment.center,
              child: child,
            );
          },
          pageBuilder: (context, animation, secondaryAnimation) {
            return done;
          },
        );
}
