import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.text,
        style: const TextStyle(fontSize: 18),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 8),
            //isCollapsed: true,
            //isDense: true,
            filled: true,
            fillColor: const Color.fromRGBO(33, 129, 0, 0.14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Image.asset(
                fit: BoxFit.fitHeight,
                'images/search.png',
                color: const Color.fromRGBO(33, 129, 0, 0.5),
              ),
            ),
            hintText: 'Пошук',
            hintStyle: const TextStyle(
              color: Color.fromRGBO(33, 129, 0, 0.5),
              fontSize: 18,
            )),
      ),
    );
  }
}
