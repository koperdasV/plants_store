import 'package:flutter/material.dart';

class DescriptionWidget extends StatefulWidget {
  const DescriptionWidget({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: SizedBox(
              width: double.infinity,
              height: 160,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  width: 100,
                  child: Text(
                    widget.description,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
