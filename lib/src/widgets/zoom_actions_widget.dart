import 'package:flutter/material.dart';

class ZoomActionsWidget extends StatelessWidget {
  const ZoomActionsWidget({
    super.key,
    required this.onZomIn,
    required this.onZomOut,
  });

  final VoidCallback onZomIn;

  final VoidCallback onZomOut;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _ZoomButton(
          icon: Icons.remove,
          onTap: onZomIn,
        ),
        _ZoomButton(
          icon: Icons.add,
          onTap: onZomOut,
        ),
      ],
    );
  }
}

class _ZoomButton extends StatelessWidget {
  const _ZoomButton({
    required this.icon,
    required this.onTap,
  });

  final VoidCallback? onTap;

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      child: RawMaterialButton(
        onPressed: onTap,
        child: Icon(icon),
      ),
    );
  }
}
