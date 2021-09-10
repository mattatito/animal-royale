import 'package:flutter/material.dart';

class ItemListTile extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback onTap;
  final Color detailsColor;

  ItemListTile({Key? key, required this.title, required this.imageUrl, required this.onTap, required this.detailsColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black,
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(color: detailsColor, width: 1)),
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
                  color: detailsColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))
              ),
              width: 70,
              height: 100,
            ),
            Text(title, style: TextStyle(fontSize: 20)),
            Container(height: 1, color: detailsColor,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}