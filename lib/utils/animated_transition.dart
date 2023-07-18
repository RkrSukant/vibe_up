import 'package:flutter/material.dart';

class AnimatedTransition extends PageRouteBuilder {
  final Widget page;
  final int duration;
  AnimatedTransition({required this.page, this.duration = 400})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionDuration: Duration(milliseconds: duration),
          reverseTransitionDuration: Duration(milliseconds: (duration - 100)),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            double beginRadius = 0.0;
            double endRadius = MediaQuery.sizeOf(context).height * 1.2;
            Offset center = Offset(MediaQuery.sizeOf(context).width/2, MediaQuery.sizeOf(context).height/2);

            var radiusTween = Tween(begin: beginRadius, end: endRadius);
            var radiusTweenAnimation =  animation.drive(radiusTween);

            return ClipPath(
              clipper: CircleTransitionClipper(
                radius: radiusTweenAnimation.value,
                center: center
              ),
              child: child,
            );
          },
        );
}

class CircleTransitionClipper extends CustomClipper<Path> {
  final Offset center;
  final double radius;

  CircleTransitionClipper({required this.center, required this.radius});

  @override
  Path getClip(Size size) {
    return Path()..addOval(Rect.fromCircle(center: center, radius: radius));
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
