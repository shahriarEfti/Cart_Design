import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int itemCount = 1;

  void incrementItem() {
    setState(() {
      itemCount++;
      if (itemCount == 5) {
        // Show AlertDialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Maximum Quantity Reached'),
              content: Text('You cannot add more items.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    });
  }

  void decrementItem() {
    setState(() {
      if (itemCount > 1) {
        itemCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width:20,),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pull Over",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800
                        ),
                      ),
                      Icon(Icons.more_vert),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Color : Black",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(width: 20,),
                    Text(
                      "Size: L",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.amber
                            ),
                            child: IconButton(
                                onPressed: decrementItem,
                                icon: Icon(Icons.remove)
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text(
                            itemCount.toString(),
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          SizedBox(width: 20,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.amber
                            ),
                            child: IconButton(
                                onPressed: incrementItem,
                                icon: Icon(Icons.add)
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Tk51",
                        style: TextStyle(
                          fontSize: 19,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
