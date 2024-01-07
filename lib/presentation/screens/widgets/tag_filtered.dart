import 'package:flutter/material.dart';

class TagFiltered extends StatelessWidget {

  final String text; 
  final bool selected;
  final Function onSelected;
  const TagFiltered({super.key, required this.text, required this.selected, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> onSelected(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
        child: Center(
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.5, end: selected ? 1.0 : 0.0),
            duration: const Duration(milliseconds: 500),
            builder: (context, value, child) => Transform.scale(
              scale: 1.0 + value * 0.05 ,
              child: child,
            ),
            child: Text(
              text,
              style: TextStyle(
                color: selected ? Color(0xFF000000) : Color.fromARGB(255, 90, 86, 86),
                fontWeight: selected ? FontWeight.w900 : FontWeight.w600,
                fontSize: selected ? 23.0 : 15.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}