import 'package:flutter/material.dart';

class HistoryViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height = 90;

  const HistoryViewAppBar({Key key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 21),
            child: Container(
              decoration: new BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200],
                    blurRadius: 5, // soften the shadow
                    spreadRadius: 5, //extend the shadow
                    offset: Offset(
                      0.0, // Move to right 10  horizontally
                      10.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
              ),
              padding: EdgeInsets.all(10),
              // MAIN ROW
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // TOTAL PRICE
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Compras",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  // Finish shopping Button
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
