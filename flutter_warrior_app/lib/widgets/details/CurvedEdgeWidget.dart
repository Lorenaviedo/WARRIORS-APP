import 'package:flutter/material.dart';
import 'package:flutter_warrior_app/widgets/details/CustomCurvedEdge.dart';

class WCurvedEdgeWidget extends StatelessWidget {
  const WCurvedEdgeWidget({
    super.key,
    required this.child
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WCustomCurvedEdge(),
      child: child,
    );
  }
}