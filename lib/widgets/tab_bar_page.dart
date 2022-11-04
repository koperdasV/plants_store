import 'package:flutter/material.dart';
import 'package:plants_store/src/ui/home/page/page.dart';
import 'package:plants_store/widgets/tab_bar_widget.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      //height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          //const SizedBox(height: 0),
          TabBarWidget(
            size: size,
            tabController: tabController,
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                AllPage(),
                ConifersPage(),
                DecorativePage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
