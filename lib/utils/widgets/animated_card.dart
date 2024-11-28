import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimatedCard extends StatelessWidget {
  final int index;

  final Widget widget;
  const AnimatedCard({super.key, required this.index, required this.widget});

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: index,
      delay: const Duration(milliseconds: 100),
      child: SlideAnimation(
        horizontalOffset: 30,
        verticalOffset: 300,
        duration: const Duration(milliseconds: 2500),
        curve: Curves.fastLinearToSlowEaseIn,
        child: FlipAnimation(
          duration: const Duration(milliseconds: 3000),
          curve: Curves.fastLinearToSlowEaseIn,
          flipAxis: FlipAxis.y,
          child: FadeInUp(
            from: index * 10,
            duration: const Duration(milliseconds: 300),
            delay: const Duration(milliseconds: 300),
            animate: true,
            curve: Curves.fastLinearToSlowEaseIn,
            child: widget,
          ),
        ),
      ),
    );
  }
}
