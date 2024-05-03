import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_life/repo/fresh_service/views/widgets/home_grid.dart';
import 'package:fresh_life/repo/home/widgets/home_user_deets.dart';
import 'package:fresh_life/repo/market/views/pages/home_market_view.dart';
import 'package:fresh_life/repo/transactions/views/pages/cart_checkout_page.dart';
import 'package:fresh_life/utils/core/app_config.dart';
import 'package:fresh_life/utils/core/doubles_config.dart';
// import 'package:fresh_life/utils/core/size_config.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  int sIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: kPadding.copyWith(bottom: 8, top: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      child: FaIcon(
                        FontAwesomeIcons.bell,
                        size: 18,
                      ),
                    ),
                    const SizedBox(width: kSpacing),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (_) => const CartCheckoutPage(),
                        ),
                      ),
                      child: const CircleAvatar(
                        child: FaIcon(
                          FontAwesomeIcons.cartShopping,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const HomeUserDeets(),
          // SizedBox(
          //   height: SizeConfig.gap(1, context),
          // ),
          TabBar(
            labelColor: Colors.black,
            labelStyle: AppConfig.body(),
            indicatorPadding:
                const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            indicatorColor: AppConfig.primaryColor,
            unselectedLabelColor: AppConfig.hintGrey,
            unselectedLabelStyle: AppConfig.hint(),
            tabs: const [
              Tab(
                text: "FreshMarket",
              ),
              Tab(
                text: "FreshServices",
              ),
            ],
            controller: _tabController,
          ),
          Flexible(
            child: TabBarView(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              controller: _tabController,
              children: const [
                HomeMarketView(),
                HomeServiceGrid(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
