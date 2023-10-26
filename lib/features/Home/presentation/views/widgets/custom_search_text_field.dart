import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: 'Search for food, grocery, meat etc.',
          hintStyle: const TextStyle(color: Colors.black26),
          filled: true,
          fillColor: Colors.black.withOpacity(0.05),
          prefixIcon: IconButton(
            icon: const Icon(Icons.search_sharp),
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
                    child: Icon(Icons.mic),
                  ),
                  const VerticalDivider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.filter_list_alt),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(26),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
