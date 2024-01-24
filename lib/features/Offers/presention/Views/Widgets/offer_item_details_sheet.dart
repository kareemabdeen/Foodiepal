import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class OfferItemDetailsSheet extends StatefulWidget {
  const OfferItemDetailsSheet({super.key});

  @override
  State<OfferItemDetailsSheet> createState() => _OfferItemDetailsSheetState();
}

class _OfferItemDetailsSheetState extends State<OfferItemDetailsSheet> {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DraggableScrollableSheet(
        initialChildSize: 0.72,
        minChildSize: 0.3,
        maxChildSize: 0.73,
        builder: (context, scrollController) => SingleChildScrollView(
          controller: scrollController,
          child: Container(
            height: 450,
            color: Colors.white,
            child: Column(
              children: [
                // Header Section
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        fit: BoxFit.contain,
                        Assets.imagesFoodDemo,
                        height: 270,
                        width: double.infinity,
                      ),
                    ),
                    Positioned(
                        top: 5,
                        left: 5,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: IconButton(
                            onPressed: () {
                              //TODO: will be handled by using bloc statement
                            },
                            icon: const Icon(
                              Icons.clear_sharp,
                              size: 25,
                            ),
                          ),
                        ))
                  ],
                ),
                const SizedBox(height: 20.0),
                // Content Section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Pepsi',
                      style: StylesManager.textStyle26,
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween, // Align elements
                      children: [
                        const Text(
                          'EGP 29.00',
                          style: StylesManager.textStyle20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              width: 130,
                              height: 45,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.black45,
                                    ),
                                    onPressed: () {},
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    '1',
                                    textAlign: TextAlign.center,
                                    style: StylesManager.textStyle20,
                                  ),
                                  const SizedBox(width: 10),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                  Colors.black,
                                ),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                                textStyle: MaterialStatePropertyAll(
                                    StylesManager.textStyle18),
                                minimumSize:
                                    MaterialStatePropertyAll(Size(100, 60))),
                            onPressed: () {},
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Add to basket'),
                                Text('EGP 29.00'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
