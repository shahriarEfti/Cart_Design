import 'package:cart_assignment/Models/cardData.dart';
import 'package:cart_assignment/Widgets/Card_label.dart';
import 'package:cart_assignment/Widgets/Quantity_Button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final double screenHeight, screenWidth;
  final Orientation orientation;
  final int index;
  final Function increaseQuantity;
  final Function decreaseQuantity;

  const Cards({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.orientation,
    required this.index,
    required this.increaseQuantity,
    required this.decreaseQuantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Access color and size from CardData
    String color = contents[index].dressColor;
    String size = contents[index].dressSize;

    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: (orientation == Orientation.portrait)
          ? screenHeight * 0.15
          : screenHeight * 0.4,
      width: screenWidth * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.00),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.05),
            blurStyle: BlurStyle.normal,
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.34,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.00),
                  bottomLeft: Radius.circular(10.00)),
              color: const Color(0xFFE3E3E3),
              image: DecorationImage(
                  image: NetworkImage(contents[index].dressImage),
                  fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(11.00),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        children: [
                          Text(
                            contents[index].dressName,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: "WorkSans"
                            ),
                          ),
                        ],
                      ),
                      const Wrap(
                        alignment: WrapAlignment.end,
                        children: [
                          Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                          ),
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: Wrap(
                      children: [
                        Wrap(
                          children: [
                            CardLabels.getDressLabel(
                              text: "Color",
                              isLabel: true,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            CardLabels.getDressLabel(
                              text: color,
                              isLabel: false,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            CardLabels.getDressLabel(
                              text: "Size:",
                              isLabel: true,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            CardLabels.getDressLabel(
                              text: size,
                              isLabel: false,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: (orientation == Orientation.portrait)
                        ? MediaQuery.of(context).size.height * 0.05
                        : MediaQuery.of(context).size.height * 0.16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        QuantityButton(
                          icon: Icons.remove,
                          onPressed: decreaseQuantity,
                        ),
                        Wrap(
                          children: [
                            Text(
                              contents[index].quantity.toString(),
                              style: const TextStyle(fontSize: 17,fontFamily: "WorkSans"),
                            ),
                          ],
                        ),
                        QuantityButton(
                          icon: Icons.add,
                          onPressed: increaseQuantity,
                        ),
                        Row(
                          children: [
                            Wrap(
                              children: [
                                Text(
                                  "${contents[index].dressPrice * contents[index].quantity}\$",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "WorkSans",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
