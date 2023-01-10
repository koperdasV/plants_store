import 'package:flutter/material.dart';
import 'package:plants_store/src/ui/home/components.dart';
import 'package:plants_store/widgets/search_widget.dart';

class ListCardWidget extends StatelessWidget {
  const ListCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchWidget(),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 10,
                  (context, index) {
                    return const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: CardWidget(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
