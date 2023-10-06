import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum AnimationType {
  slide,
  boxSlide,
  fade,
  scale,
  rotate,
}

class Animator extends ConsumerStatefulWidget {
  const Animator.slide({
    super.key,
    required this.beginOffset,
    required this.endOffset,
    required this.child,
    this.curve = Curves.ease,
    this.duration = const Duration(milliseconds: 1000),
    this.delay = const Duration(milliseconds: 0),
    this.isEnable = true,
    this.isRepeat = false,
    this.isReverse = false,
  })  : animationType = AnimationType.slide,
        boxHeight = null;

  const Animator.boxSlide({
    super.key,
    required this.beginOffset,
    required this.endOffset,
    required this.child,
    this.curve = Curves.ease,
    this.duration = const Duration(milliseconds: 1000),
    this.delay = const Duration(milliseconds: 0),
    this.isEnable = true,
    this.isRepeat = false,
    this.isReverse = false,
    this.boxHeight,
  }) : animationType = AnimationType.boxSlide;

  /// The type of animation to perform on the child.
  final AnimationType animationType;

  /// The child to animate.
  final Widget child;

  /// The duration of the animation.
  final Duration duration;

  /// The delay before the animation begins.
  final Duration delay;

  /// The curve to apply when animating.
  final Curve curve;

  /// Whether the animation should be enabled.
  final bool isEnable;

  /// Whether the animation should repeat.
  final bool isRepeat;

  /// Whether the animation should reverse.
  final bool isReverse;

  /// The offset to begin the animation from.
  final Offset beginOffset;

  /// The offset to end the animation at.
  final Offset endOffset;

  /// The height for the box slide animation.
  final double? boxHeight;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AnimatorState();
}

class _AnimatorState extends ConsumerState<Animator>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: widget.isReverse ? widget.endOffset : widget.beginOffset,
      end: widget.isReverse ? widget.beginOffset : widget.endOffset,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: widget.curve,
      ),
    );

    if (widget.isEnable) {
      Future.delayed(widget.delay, () {
        if (mounted) {
          if (widget.isRepeat) {
            _animationController.repeat();
          } else {
            _animationController.forward();
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.animationType) {
      case AnimationType.slide:
        return _slideAnimationBuilder();
      case AnimationType.boxSlide:
        return _boxSlideAnimationBuilder();
      default:
    }

    return Container();
  }

  Widget _slideAnimationBuilder() {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }

  Widget _boxSlideAnimationBuilder() {
    final height = (widget.beginOffset.dy - widget.endOffset.dy).abs();
    return SizedBox(
      height: widget.boxHeight ?? (height == 0 ? null : height),
      child: Stack(
        children: [
          AnimatedBuilder(
            animation: _animation,
            child: widget.child,
            builder: (context, child) {
              return Positioned(
                left: _animation.value.dx,
                top: _animation.value.dy,
                right: 0.0,
                child: child!,
              );
            },
          ),
        ],
      ),
    );
  }
}
