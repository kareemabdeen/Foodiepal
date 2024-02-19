import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/generated/l10n.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    required this.borderRadius,
    this.enabled = true, // because this is the ordinary case of the textfiled
  });

  final double borderRadius;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: enabled,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          border: InputBorder.none,
          hintText: S.of(context).SearchForFood,
          hintStyle:
              Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 16),
          filled: true,
          fillColor: Colors.black.withOpacity(0.026),
          prefixIcon: IconButton(
            icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 20),
            onPressed: () {},
          ),
          suffixIcon: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.mic),
                  ),
                  const VerticalDivider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.tune,
                    ), // Todo: will be changed to an image in material io => imageName: Discover_tune
                  ),
                ],
              ),
            ),
          )),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
