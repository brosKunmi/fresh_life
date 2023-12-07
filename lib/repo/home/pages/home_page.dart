import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/repo/chat/views/pages/fresh_support.dart';
import 'package:fresh_life/repo/home/pages/home_view.dart';
import 'package:fresh_life/repo/home/widgets/menu_items.dart';
import 'package:fresh_life/repo/transactions/views/pages/orders_page.dart';
// import 'package:fresh_life/repo/transactions/views/wallet_page.dart';
import 'package:fresh_life/repo/user/views/pages/profile/profile_page.dart';
import 'package:fresh_life/utils/core/app_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int cIndex = 0;

  final List<MenuItems> bottomItems = const [
    MenuItems(icon: FontAwesomeIcons.house, name: 'Home'),
    MenuItems(icon: FontAwesomeIcons.listCheck, name: 'Orders'),
    // MenuItems(icon: FontAwesomeIcons.wallet, name: 'Wallet'),
    MenuItems(icon: FontAwesomeIcons.inbox, name: 'Help'),
    MenuItems(icon: FontAwesomeIcons.user, name: 'Profile'),
  ];

  List<Widget> children = [
    const HomeView(),
    const OrdersPage(),
    // const WalletPage(),
    const FreshSupport(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: bottomItems
            .map(
              (e) => BottomNavigationBarItem(
                icon: FaIcon(
                  e.icon,
                  size: 16,
                ),
                label: e.name,
              ),
            )
            .toList(),
        currentIndex: cIndex,
        selectedItemColor: AppConfig.primaryColor,
        unselectedItemColor: AppConfig.hintGrey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (i) {
          setState(() {
            cIndex = i;
          });
        },
        selectedLabelStyle: AppConfig.sub(),
        unselectedLabelStyle: AppConfig.sub().copyWith(fontSize: 12),
        // type: BottomNavigationBarType.fixed,
      ),
      body: IndexedStack(index: cIndex, children: children),
    );
  }
}
