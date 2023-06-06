import 'package:intl/intl.dart';

import '../../../res/import/import.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    return Consumer<ThemeProvider>(
      builder: (context, theme, child) {
        return Scaffold(
            appBar: CustomAppbar(
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const XMargin(15),
                    Image.asset(theme.isDarkTheme
                        ? 'assets/images/darkLogomark.png'
                        : 'assets/images/Logomark.png'),
                    const XMargin(10),
                    Image.asset(
                      'assets/images/Logotype.png',
                      color: theme.isDarkTheme ? roqquWhite : roqquBlack,
                    ), // Add Spacer widget
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/81.png'),
                    const XMargin(10),
                    Image.asset('assets/images/Line.png'),
                    const XMargin(10),
                    Builder(builder: (ctx) {
                      return InkWell(
                        onTap: () {
                          Scaffold.of(ctx).openEndDrawer();
                        },
                        child: Image.asset('assets/images/menu-alt-1.png'),
                      );
                    }),
                    const XMargin(15),
                  ],
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const HomeScreenWidget(),
                  Builder(builder: (ctx) {
                    return Container(
                      height: config.sh(64),
                      width: MediaQuery.of(context).size.width,
                      color: theme.isDarkTheme ? roqqueDarkColor : roqquWhite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            height: config.sh(32),
                            child: CustomButton2(
                                buttonColor: roqquBuyColor,
                                borderColor: roqquBuyColor,
                                textColor: roqquWhite,
                                title: 'Buy',
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return BuySellBottomSheet();
                                    },
                                  );
                                }),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.3,
                            height: config.sh(32),
                            child: const CustomButton2(
                              buttonColor: roqquSellColor,
                              borderColor: roqquSellColor,
                              textColor: roqquWhite,
                              title: 'Sell',
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                  const YMargin(30),
                ],
              ),
            ),
            endDrawer: Container(
              height: config.sh(284),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: theme.isDarkTheme ? roqqueDarkColor : roqquWhite,
              ),
              child: SideMenu(),
            ));
      },
    );
  }
}

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    return SingleChildScrollView(
      child: Column(
        children: [
          const YMargin(10),
          Consumer2<WebsocketProvider, ThemeProvider>(
            builder: (context, web, theme, _) {
              return Container(
                height: config.sh(140),
                width: MediaQuery.of(context).size.width,
                color: theme.isDarkTheme ? roqqueDarkColor : roqquWhite,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/Group 237550.png'),
                          const XMargin(10),
                          Text(
                            'BTC/USDT',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          const XMargin(20),
                          const Icon(Icons.keyboard_arrow_down_outlined),
                          const XMargin(27),
                          Text(
                            '\$${NumberFormat('#,##0').format(double.parse(web.open ?? '00'))}',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.access_time),
                                  const XMargin(5),
                                  Text(
                                    '24h change',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                              const YMargin(8),
                              Text(
                                '${NumberFormat('###.00').format(double.parse(web.change ?? '00'))} ${decimalValue(web.change ?? '00.00')}',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              const XMargin(10),
                            ],
                          ),
                          Image.asset('assets/images/divider.png'),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.arrow_upward_outlined),
                                  const XMargin(5),
                                  Text(
                                    '24h high',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                              const YMargin(8),
                              Text(
                                '${NumberFormat('###.00').format(double.parse(web.high ?? '00'))} ${decimalValue(web.high ?? '00.00')}',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              const XMargin(10),
                            ],
                          ),
                          Image.asset('assets/images/divider.png'),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const XMargin(10),
                              Row(
                                children: [
                                  const Icon(Icons.arrow_downward_outlined),
                                  const XMargin(5),
                                  Text(
                                    '24h low',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                              const YMargin(8),
                              Text(
                                '${NumberFormat('###.00').format(double.parse(web.low ?? '00'))} ${decimalValue(web.low ?? '00.00')}',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              const XMargin(10),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          const YMargin(10),
          ChartsOrderbookTrades(),
          const YMargin(10),
          OpenOrderHistory(),
          const YMargin(62),
        ],
      ),
    );
  }
}
