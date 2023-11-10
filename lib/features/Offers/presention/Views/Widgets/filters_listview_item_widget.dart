import 'package:flutter/material.dart';

class FiltersListViewItem extends StatelessWidget {
  const FiltersListViewItem({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        margin: const EdgeInsets.only(right: 6, top: 8, bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 183, 178, 178),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(24),
          ),
        ),
        child: child,
      ),
    );
  }
}
