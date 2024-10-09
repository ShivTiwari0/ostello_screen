import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostello/core/extension.dart';
import 'package:ostello/core/ui.dart';
import 'package:ostello/presentation/screens/home/ai_tutor_screen.dart';
import 'package:ostello/presentation/screens/home/batches_screen.dart';
import 'package:ostello/presentation/screens/home/content_screen.dart';
import 'package:ostello/presentation/screens/home/feed_screen.dart';
import 'package:ostello/presentation/screens/home/schedule_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = "home";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = const [
    FeedScreen(),
    ScheduleScreen(),
    ContentScreen(),
    BatchesScreen(),
    AiTutorScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const InkWell(child: Icon(Icons.format_align_left)),
            Container(
              width: context.width() * 0.25,
              height: context.height() * 0.04,
              margin: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  border: Border.all(width: 0.8, color: AppColors.accent),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '  12th IIT JEE',
                    style: TextStyle(
                        color: AppColors.text,
                        fontSize: 12,
                        fontWeight: FontWeight.w800),
                  ),
                  const Icon(Icons.chevron_right)
                ],
              ),
            )
          ],
        ),
        actions: [
          Container(
            width: context.width() * 0.18,
            height: context.height() * 0.04,
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                color: const Color(0xFFFAF6FF),
                border: Border.all(width: 1, color: AppColors.accent),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/coin.png'),
                Text(
                  '300',
                  style: TextStyle(
                      color: AppColors.text,
                      fontSize: 15 ,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          )
        ],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                CupertinoIcons.home,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.home_filled,
                color: AppColors.accent,
              ),
              label: "Home",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "Schedule",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Content",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Batches",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "AiTutor",
            )
          ]),
    );
  }
}
