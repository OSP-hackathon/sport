import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:sport2/routes.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key, this.selected = 0}) : super(key: key);

  final int selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(14)),
        color: Theme.of(context).primaryColor,
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          flex: 30,
          child: Image.asset('assets/images/logo_fsp.png'),
        ),
        Expanded(
            flex: 53,
            child: SidebarX(
              showToggleButton: false,
              theme: SidebarXTheme(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                width: 150,
                selectedIconTheme:
                    IconThemeData(color: Theme.of(context).highlightColor),
                selectedTextStyle:
                    TextStyle(color: Theme.of(context).highlightColor),
                textStyle: TextStyle(color: Colors.white),
                iconTheme: IconThemeData(color: Colors.white),
              ),
              controller:
                  SidebarXController(selectedIndex: selected, extended: true),
              items: [
                SidebarXItem(
                  icon: Icons.dashboard,
                  label: 'Главная',
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.sportsmanURL);
                  },
                ),
                SidebarXItem(
                  icon: Icons.bar_chart,
                  label: 'Статистика',
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.sportsmanStatisticsURL);
                  },
                ),
                SidebarXItem(
                  icon: Icons.people,
                  label: 'Команды',
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.sportsmanTeamsURL);
                  },
                ),
                SidebarXItem(
                  icon: Icons.calendar_month,
                  label: 'Мероприятия',
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.sportsmanEventsURL);
                  },
                ),
                SidebarXItem(
                  icon: Icons.text_snippet,
                  label: 'Резюме',
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.sportsmanResumeURL);
                  },
                ),
                SidebarXItem(
                  icon: Icons.sports_score,
                  label: 'Тренировки',
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.sportsmanTrainingsURL);
                  },
                ),
                SidebarXItem(
                  icon: Icons.task_alt,
                  label: 'Задачи',
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.sportsmanTasksURL);
                  },
                ),
                SidebarXItem(
                  icon: Icons.settings,
                  label: 'Настройки',
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.sportsmanSettingsURL);
                  },
                ),
              ],
            )),
        Expanded(
            flex: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.exit_to_app, color: Colors.white),
                Text('Выйти', style: TextStyle(color: Colors.white))
              ],
            ))
      ]),
    );
  }
}
