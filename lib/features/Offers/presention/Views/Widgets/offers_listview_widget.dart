import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../Home/Presentation/views/Styles/ItemsTextStyles.dart';
import 'offers_listview_item_widget.dart';

class OffersListView extends StatefulWidget {
  const OffersListView({super.key});

  @override
  State<OffersListView> createState() => _OffersListViewState();
}

class _OffersListViewState extends State<OffersListView> {
  String _enteredText = '';

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        bool orderWithDetails = true;
        return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.white,
                barrierColor: Colors.black.withOpacity(0.5),
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                context: context,
                builder: (context) => Wrap(
                  children: [
                    // Header Section
                    const HeaderSection(),
                    // Content Section
                    buildContentSection(orderWithDetails, context),
                  ],
                ),
              );
            },
            child: const OfferListViewItem());
      },
    );
  }

  Padding buildContentSection(bool orderWithDetails, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Salami Italian Pizza',
            style: StylesManager.textStyle26,
          ),
          orderWithDetails
              ? Column(
                  children: [
                    const SizedBox(height: 6.0),
                    Text(
                      'pizza sauce, mozzarella, vegetables and Salami',
                      style: ItemsTextStyles.textStyle14
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              : Container(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // Align elements
            children: [
              Text(
                orderWithDetails ? 'Price on selection' : 'EGP 29.00',
                style: StylesManager.textStyle20
                    .copyWith(fontWeight: FontWeight.w600),
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
          orderWithDetails
              ? Column(
                  children: [
                    Divider(
                      thickness: 8,
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your Choice Of Size:',
                              style: StylesManager.textStyle20
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Choose 1',
                              style: ItemsTextStyles.textStyle14
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            elevation: const MaterialStatePropertyAll(0),
                            backgroundColor: MaterialStatePropertyAll(
                                Colors.red.withOpacity(0.1)),
                            foregroundColor:
                                const MaterialStatePropertyAll(Colors.black),
                          ),
                          onPressed: () {},
                          child: const Text('Required'),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        buildRadioListTile('Small', '(+EGP 95.00)', (value) {}),
                        Divider(
                          thickness: 1,
                          color: Colors.black.withOpacity(0.1),
                        ),
                        buildRadioListTile(
                            'Medium', '(+EGP 125.00)', (value) {}),
                        Divider(
                          thickness: 1,
                          color: Colors.black.withOpacity(0.1),
                        ),
                        buildRadioListTile(
                            'Large', '(+EGP 160.00)', (value) {}),
                      ],
                    )
                  ],
                )
              : Container(),
          Column(
            children: [
              Divider(
                thickness: 8,
                color: Colors.grey.withOpacity(0.1),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.messenger_outline,
                    size: 26,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Any special requests?',
                    style: StylesManager.textStyle18.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (context) => Container(
                            padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context)
                                  .viewInsets
                                  .bottom, // Adjust for keyboard
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              // Add some padding
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    maxLength: 200,
                                    maxLines: 4,
                                    onChanged: (value) {
                                      setState(() {
                                        _enteredText = value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      labelText: 'Special request',
                                      alignLabelWithHint: true,
                                      hintText: 'Add Note',
                                      counterText:
                                          '${_enteredText.length.toString()}/200',
                                      counterStyle: const TextStyle(
                                          fontSize: 15, color: Colors.black54),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          _enteredText = '';
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          'Cancel',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          // Save the note and dismiss the dialog
                                          Navigator.pop(context);
                                          // Add your note saving logic here
                                        },
                                        child: const Text(
                                          'Save',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'Add note',
                        style: StylesManager.textStyle16.copyWith(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ))
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.black.withOpacity(0.1),
              ),
            ],
          ),
          const SizedBox(height: 5.0),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.black,
                      ),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                      textStyle:
                          MaterialStatePropertyAll(StylesManager.textStyle18),
                      minimumSize: MaterialStatePropertyAll(Size(100, 60))),
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
    );
  }

  Widget buildRadioListTile(
      String title, String price, Function(Object?)? radioFunction) {
    return Row(
      children: [
        Text(
          title,
          style: StylesManager.textStyle18,
        ),
        const Spacer(),
        Text(
          price,
          style: StylesManager.textStyle14.copyWith(color: Colors.black54),
        ),
        Radio(
          value: 5,
          groupValue: (),
          onChanged: radioFunction,
        ),
      ],
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            fit: BoxFit.cover,
            Assets.imagesFoodDemo,
            height: 270,
            width: double.infinity,
          ),
        ),
        Positioned(
            top: 20,
            left: 20,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.clear_sharp,
                  size: 25,
                ),
              ),
            ))
      ],
    );
  }
}
