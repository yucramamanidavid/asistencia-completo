import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isSelected;
  final Function onTap;

  const TabItem({super.key, required this.text, required this.icon, required this.isSelected, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(icon,/*color: isSelected ? Colors.white : Colors.grey,*/ ),
            Text(text, style: TextStyle(
                color: isSelected ? Colors.black : Colors.black54,
                /*fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,*/
                fontSize: 14
            ),)
          ],
        ),
      ),
      onTap: (){
        onTap();
      },
    );
  }
}