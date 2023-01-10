import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';
import 'package:plants_store/widgets/gradient_text.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset('images/shopping_cart.png'),
            ),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Image.asset('images/logo.png'),
              Padding(
                padding: const EdgeInsets.only(left: 4, top: 5),
                child: GradientText(
                  'PlantShop',
                  gradient: AppColor.kPrimaryGradient,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 16,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: false,
          // Set custom snapping points.
          snappings: [0.2, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/plant_details_test.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return const SizedBox(
            height: 450,
            child: Center(
              child: Text('This is the content of the sheet'),
            ),
          );
        },
      ),
    );
  }
}

// class SlidingBottomSheet extends StatelessWidget {
//   const SlidingBottomSheet({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SlidingSheet(
//       elevation: 8,
//       cornerRadius: 16,
//       snapSpec: const SnapSpec(
//         snap: false,
//         snappings: [0.25, 0.7, 1.0],
//         positioning: SnapPositioning.relativeToAvailableSpace,
//       ),
//       body: const Body(),
//       builder: (context, state) {
//         return const CardWidget();
//       },
//       headerBuilder: (context, state) {
//         return Container(
//           height: 56,
//           width: double.infinity,
//           color: Colors.white,
//           child: Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 20, top: 16),
//                 child: Image.asset('images/sun.png'),
//               ),
//               const Padding(
//                 padding: EdgeInsets.only(left: 12, top: 16),
//                 child: Text(
//                   'Гарячі пропозиції',
//                   style: TextStyle(
//                     color: Color(0xFF262841),
//                     fontSize: 24,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// class Body extends StatelessWidget {
//   const Body({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage("images/plant_details_test.png"),
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }

/*import 'package:flutter/material.dart';
import 'package:plants_store/src/ui/details/widgets/image_widget.dart';
import 'package:plants_store/src/ui/home/components.dart';

import '../../../resources/colors.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              ImageWidget(size: size),
              Positioned(
                top: 48,
                right: 28,
                child: IconWidget(
                  onPressed: () {},
                  icon: Image.asset('images/icon_favorites.png'),
                ),
              ),
              Positioned(
                bottom: size.width * 0.725,
                child: SizedBox(
                  width: size.width,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.034),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconWidget(
                          onPressed: () {
                            // const DescriptionWidget(
                            //   description:
                            //       'Туя західна Мікі однаково добре переносить висаджування на сонячних ділянках й в легкій півтіні.',
                            // );
                          },
                          icon: Image.asset('images/sun.png'),
                        ),
                        IconWidget(
                          onPressed: () {},
                          icon: Image.asset('images/water-drop.png'),
                        ),
                        IconWidget(
                          onPressed: () {},
                          icon: Image.asset('images/snowflake.png'),
                        ),
                        IconWidget(
                          onPressed: () {},
                          icon: Image.asset('images/soil.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                bottom: 242,
                child: Padding(
                  padding: EdgeInsets.only(left: 55),
                  child: Text(
                    "Туя Мікі",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: size.height / 10,
                left: size.width * 0.15,
                child: SizedBox(
                  width: size.width / 1.5,
                  height: size.height / 5.5,
                  child: const SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: DescriptionWidget(
                      description:
                          'Вічнозелена хвойна туя, приваблива своєю мініатюрною формою. Крона має форму конуса зі злегка скрученими вертикальними валикоподібними пагонами.',
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(112, 112, 112, 0.25),
                          blurRadius: 20,
                          spreadRadius: 10,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  width: size.width,
                  height: size.height / 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '200₴',
                        style: TextStyle(
                            fontSize: 32,
                            color: AppColor.kPrimaryColor,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: size.width / 2,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                AppColor.kPrimaryColor),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Додати в кошик',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DescriptionWidget extends StatefulWidget {
  const DescriptionWidget({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Text(
        widget.description,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
*/
