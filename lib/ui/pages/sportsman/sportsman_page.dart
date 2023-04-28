import 'package:flutter/material.dart';
import 'package:sport2/routes.dart';
import 'package:sport2/ui/ui_kit/colors.dart';
import 'package:sport2/ui/widgets/app_bar.dart';
import 'package:sport2/ui/widgets/rating_chart.dart';
import 'package:sport2/ui/widgets/side_bar.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import "package:table_calendar/table_calendar.dart";

class SportsmanPage extends StatefulWidget {
  const SportsmanPage({Key? key}) : super(key: key);

  @override
  State<SportsmanPage> createState() => _SportsmanPageState();
}

class _SportsmanPageState extends State<SportsmanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
              flex: 13,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: SideBar(selected: 0),
              )),
          Expanded(
            flex: 50,
            child: Column(
              children: [
                Expanded(
                  flex: 30,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 67,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 60,
                                child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 60,
                                          child: Container(
                                            constraints:
                                                const BoxConstraints.expand(),
                                            decoration: BoxDecoration(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                            ),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: 60,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        50, 30, 0, 30),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Привет, Чемпион!",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .titleLarge),
                                                        Text(
                                                            "Отличное время для тренировки",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .titleMedium),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 36,
                                                  child: Image.asset(
                                                      "assets/images/metal_young.png",
                                                      fit: BoxFit.cover),
                                                ),
                                                Expanded(
                                                  flex: 4,
                                                  // child:Container(color: Colors.black,),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(3.0),
                                                        child: GestureDetector(
                                                            onTap: () {
                                                              Navigator
                                                                  .pushReplacementNamed(
                                                                      context,
                                                                      AppRoutes
                                                                          .sportsmanTrainingsURL);
                                                            },
                                                            child: Image.asset(
                                                                "assets/images/arrow.png",
                                                                fit: BoxFit
                                                                    .fill)),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 40,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: 60,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 30, 15, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(20),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("11",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .titleLarge),
                                                            Text(
                                                                "Дней подряд тренировок",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .titleMedium),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 40,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(15, 30, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(20),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("354",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .titleLarge),
                                                            Text("Рейтинг",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .titleMedium),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ],
                                    )),
                              ),
                            ],
                          )),
                      Expanded(
                        flex: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 93,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text("5",
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge),
                                        Text(
                                            "Раз просмотрели твою резюме за неделю",
                                            style: Theme.of(context)
                                                .textTheme
                                                .displaySmall
                                                ?.copyWith(color: Colors.grey)),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 7,
                                  // child:Container(color: Colors.black,),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: GestureDetector(
                                            onTap: () {
                                              Navigator.pushReplacementNamed(
                                                  context,
                                                  AppRoutes
                                                      .sportsmanTrainingsURL);
                                            },
                                            child: Image.asset(
                                                "assets/images/arrow.png",
                                                fit: BoxFit.fill)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 35,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Center(
                              child: LineChart(mainData()),
                            )),
                      ),
                    )),
                Expanded(
                  flex: 35,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                        constraints: const BoxConstraints.expand(),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: HeatMap(
                                  colorMode: ColorMode.color,
                                  colorsets: {
                                    0: Colors.green[100]!,
                                    2: Colors.green[200]!,
                                    4: Colors.green[300]!,
                                    6: Colors.green[400]!,
                                    8: Colors.green[500]!,
                                    10: Colors.green[600]!,
                                    12: Colors.green[700]!,
                                    14: Colors.green[800]!,
                                    16: Colors.green[900]!,
                                  },
                                  datasets: {
                                    DateTime(2023, 1, 1): 1,
                                    DateTime(2023, 1, 2): 2,
                                    DateTime(2023, 1, 3): 3,
                                    DateTime(2023, 1, 4): 4,
                                    DateTime(2023, 1, 5): 1,
                                    DateTime(2023, 1, 6): 2,
                                    DateTime(2023, 1, 7): 3,
                                    DateTime(2023, 1, 8): 4,
                                    DateTime(2023, 1, 9): 1,
                                    DateTime(2023, 1, 10): 2,
                                    DateTime(2023, 1, 11): 3,
                                    DateTime(2023, 1, 12): 4,
                                    DateTime(2023, 1, 13): 10,
                                    DateTime(2023, 1, 14): 8,
                                    DateTime(2023, 1, 15): 6,
                                    DateTime(2023, 1, 16): 9,
                                    DateTime(2023, 1, 17): 10,
                                    DateTime(2023, 1, 18): 8,
                                    DateTime(2023, 1, 19): 6,
                                    DateTime(2023, 1, 20): 9,
                                  },
                                  startDate: DateTime(2022, 9, 1),
                                  endDate: DateTime(2023, 4, 1),
                                )),
                            Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        flex: 25,
                                        child: Column(children: [
                                          Text("1234",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge),
                                          Text("Решено задач всего",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium),
                                        ])),
                                    Expanded(
                                        flex: 25,
                                        child: Column(children: [
                                          Text("123",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge),
                                          Text("Решено задач за год",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium),
                                        ])),
                                    Expanded(
                                        flex: 25,
                                        child: Column(children: [
                                          Text("12",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge),
                                          Text("Решено задач за месяц",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium),
                                        ])),
                                    Expanded(
                                        flex: 25,
                                        child: Column(children: [
                                          Text("1",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge),
                                          Text("Решено задач за неделю",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium),
                                        ])),
                                  ],
                                ))
                          ],
                        )),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 37,
            child: Column(
              children: [
                Expanded(
                  flex: 7,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 77,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(),
                                hintText: 'Поиск',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.notifications_active),
                            ),
                          )),
                      Expanded(
                        flex: 13,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset("assets/images/profile.png"),
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 26,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 77,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                                constraints: const BoxConstraints.expand(),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 95,
                                      child: TableCalendar(
                                        headerStyle: HeaderStyle(
                                          formatButtonVisible: false,
                                        ),
                                        startingDayOfWeek:
                                            StartingDayOfWeek.monday,
                                        calendarFormat: CalendarFormat.twoWeeks,
                                        rowHeight: 52,
                                        daysOfWeekHeight: 30,
                                        eventLoader: ((day) => day ==
                                                    DateTime.utc(2023, 5, 1) ||
                                                day == DateTime.utc(2023, 5, 10) ||
                                            day == DateTime.utc(2023, 5, 11) ||
                                                day == DateTime.utc(2023, 5, 6) ||
                                            day == DateTime.utc(2023, 5, 7) ||
                                            day == DateTime.utc(2023, 5, 2)
                                            ? [1]
                                            : []),
                                        calendarStyle: CalendarStyle(
                                          defaultTextStyle: Theme.of(context)
                                              .textTheme
                                              .displaySmall!,
                                          weekendTextStyle: Theme.of(context)
                                              .textTheme
                                              .displaySmall!
                                              .copyWith(
                                                  color: Theme.of(context)
                                                      .textTheme
                                                      .displaySmall!
                                                      .color!
                                                      .withOpacity(0.5)),
                                          outsideTextStyle: Theme.of(context)
                                              .textTheme
                                              .displaySmall!
                                              .copyWith(
                                                  color: Theme.of(context)
                                                      .textTheme
                                                      .displaySmall!
                                                      .color!
                                                      .withOpacity(0.5)),
                                          outsideDaysVisible: true,
                                          markerDecoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .textTheme
                                                .displaySmall!
                                                .color,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        firstDay: DateTime.utc(2022, 1, 1),
                                        lastDay: DateTime.utc(2023, 12, 31),
                                        focusedDay: DateTime.utc(2023, 5, 1),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: GestureDetector(
                                                onTap: () {
                                                  Navigator.pushReplacementNamed(
                                                      context,
                                                      AppRoutes
                                                          .sportsmanTrainingsURL);
                                                },
                                                child: Image.asset(
                                                    "assets/images/arrow.png",
                                                    fit: BoxFit.fill)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          )),
                      Expanded(
                        flex: 23,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  flex: 90,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Text("5",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge),
                                        Text(
                                            "Горящих задач",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(color: Colors.grey)),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 12,
                                  // child:Container(color: Colors.black,),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: GestureDetector(
                                            onTap: () {
                                              Navigator.pushReplacementNamed(
                                                  context,
                                                  AppRoutes
                                                      .sportsmanTrainingsURL);
                                            },
                                            child: Image.asset(
                                                "assets/images/arrow.png",
                                                fit: BoxFit.fill)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 25,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      constraints: const BoxConstraints.expand(),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 60,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("ФСП Хакатон г.Воронеж",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge),
                                  Text(
                                      "Самый лучший хакатон в мире, чтобы взять КМС по спорту",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(color: Colors.grey)),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Text("До начала",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium),
                                      Text("12 дней",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("100 участников",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium?.copyWith(color: Theme.of(context).textTheme.displaySmall!.color)),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(onPressed: (){}, icon: Icon(Icons.check_box, color: Theme.of(context).textTheme.displaySmall!.color,)),
                                      IconButton(onPressed: (){}, icon: Icon(Icons.close_rounded, color: Theme.of(context).textTheme.displaySmall!.color,)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            // child:Container(color: Colors.black,),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacementNamed(
                                            context,
                                            AppRoutes.sportsmanTrainingsURL);
                                      },
                                      child: Image.asset(
                                          "assets/images/arrow.png",
                                          fit: BoxFit.fill)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 25,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      constraints: const BoxConstraints.expand(),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 60,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("ФСП алгоритмы г.Воронеж",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge),
                                  Text(
                                      "Возможность взять Мастера Спорта по спорт проге",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(color: Colors.grey)),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Text("До начала",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium),
                                      Text("10 дней",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("150 участников",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium?.copyWith(color: Theme.of(context).textTheme.displaySmall!.color)),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(onPressed: (){}, icon: Icon(Icons.check_box, color: Theme.of(context).textTheme.displaySmall!.color,)),
                                      IconButton(onPressed: (){}, icon: Icon(Icons.close_rounded, color: Theme.of(context).textTheme.displaySmall!.color,)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            // child:Container(color: Colors.black,),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacementNamed(
                                            context,
                                            AppRoutes.sportsmanTrainingsURL);
                                      },
                                      child: Image.asset(
                                          "assets/images/arrow.png",
                                          fit: BoxFit.fill)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 25,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      constraints: const BoxConstraints.expand(),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 60,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Innopolis Open по информационной безопасности",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge),
                                  Text(
                                      "CTF соревнование в самом современном городе России",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(color: Colors.grey)),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Text("До начала",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium),
                                      Text("50 дней",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("400 участников",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium?.copyWith(color: Theme.of(context).textTheme.displaySmall!.color)),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(onPressed: (){}, icon: Icon(Icons.check_box, color: Theme.of(context).textTheme.displaySmall!.color,)),
                                      IconButton(onPressed: (){}, icon: Icon(Icons.close_rounded, color: Theme.of(context).textTheme.displaySmall!.color,)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            // child:Container(color: Colors.black,),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacementNamed(
                                            context,
                                            AppRoutes.sportsmanTrainingsURL);
                                      },
                                      child: Image.asset(
                                          "assets/images/arrow.png",
                                          fit: BoxFit.fill)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
