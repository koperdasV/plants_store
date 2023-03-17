import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';
import 'package:plants_store/src/ui/details/components/amount_controls.dart';
import 'package:plants_store/src/ui/details/components/description_widget.dart';
import 'package:plants_store/src/ui/home/components.dart';
import 'package:plants_store/widgets/gradient_text.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({
    super.key,
    this.title = 'Опис',
    this.description =
        'Вічнозелена хвойна туя, приваблива своєю мініатюрною формою. Крона має форму конуса зі злегка скрученими вертикальними валикоподібними пагонами.Зростає повільно і в 10 років виростає до 60 -80 см, а в ширину до 50 см.',
  });

  String title;
  String description;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/plant_details_test.png'),
                ),
              ),
            ),
          ),
          Positioned(
            top: 45,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconWidget(
                  onPressed: () {},
                  icon: 'images/arrow_back.png',
                ),
                Container(
                  height: 28,
                  width: 54,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      '1 / 2',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
                color: Colors.white,
              ),
              height: 430,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Туя Мікі",
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_outline,
                                    color: AppColor.unselectedItemColor,
                                    size: 32,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: GradientText(
                              "200₴",
                              gradient: AppColor.kPrimaryGradient,
                              style: const TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          IconWidget(
                            onPressed: () {
                              setState(() {
                                widget.title = 'Опис';
                                widget.description =
                                    'Вічнозелена хвойна туя, приваблива своєю мініатюрною формою. Крона має форму конуса зі злегка скрученими вертикальними валикоподібними пагонами.Зростає повільно і в 10 років виростає до 60 -80 см, а в ширину до 50 см.';
                              });
                            },
                            icon: 'images/description.png',
                          ),
                          IconWidget(
                            onPressed: () {
                              setState(() {
                                widget.title = 'Світло';
                                widget.description =
                                    'Туя західна Miky однаково добре переносить висаджування на сонячних ділянках й в легкій півтіні.';
                              });
                            },
                            icon: 'images/sun.png',
                          ),
                          IconWidget(
                            onPressed: () {
                              setState(() {
                                widget.title = 'Полив';
                                widget.description = 'Регулярний полив.';
                              });
                            },
                            icon: 'images/water.png',
                          ),
                          IconWidget(
                            onPressed: () {
                              setState(() {
                                widget.title = 'Морозостійкість';
                                widget.description =
                                    '4 (-34,4°С - -28,9°С)\nВідмінно переносить зими в усіх кліматичних зонах України, але тільки якщо вони сніжні – сніг є для рослини природним укриттям. Якщо прогнозується його мала кількість, рекомендується продумати захисне покриття ялиновим гіллям або за допомогою агротекстилю. Молоді (до 2-3 років) саджанці притіняють в січні-лютому для профілактики сонячних опіків й звільняють крону після сходу снігу. Це потрібно робити в похмурий безвітряний день.';
                              });
                            },
                            icon: 'images/snow.png',
                          ),
                          IconWidget(
                            onPressed: () {
                              setState(() {
                                widget.title = 'Грунт';
                                widget.description =
                                    'Рослина любить помірно поживні ґрунти. Вона без втрат витримує короткочасні перезволоження та посуху.';
                              });
                            },
                            icon: 'images/soil.png',
                          ),
                        ],
                      ),
                    ),
                    DescriptionWidget(
                      title: widget.title,
                      description: widget.description,
                    )
                  ],
                ),
              ),
            ),
          ),
          const AmountControls(),
        ],
      ),
    );
  }
}
