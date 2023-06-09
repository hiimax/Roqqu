import 'package:intl/intl.dart';

import '../../../../res/import/import.dart';

class OrderBooks extends StatelessWidget {
  const OrderBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    return Consumer2<WebsocketProvider, ThemeProvider>(
      builder: (context, web, theme, _) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: config.sh(32),
                        width: config.sh(32),
                        color: theme.isDarkTheme
                            ? roqquDarkSelectionColor
                            : greyColor,
                        child: Center(
                          child: Image.asset('assets/images/Frame 980.png'),
                        ),
                      ),
                      const XMargin(10),
                      Container(
                        height: config.sh(32),
                        width: config.sh(32),
                        color: Transparent,
                        child: Center(
                          child: Image.asset('assets/images/Frame 979.png'),
                        ),
                      ),
                      const XMargin(10),
                      Container(
                        height: config.sh(32),
                        width: config.sh(32),
                        color: Transparent,
                        child: Center(
                          child: Image.asset('assets/images/Frame 978.png'),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: config.sh(32),
                    width: config.sh(64),
                    color:
                        theme.isDarkTheme ? roqquDarkSelectionColor : greyColor,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '10',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          const Icon(Icons.keyboard_arrow_down_rounded),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 19),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                              height: config.sh(20),
                              color: Transparent,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Price\n(USDT)',
                                      textAlign: TextAlign.start,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                              height: config.sh(20),
                              color: Transparent,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Amounts\n(BTC)',
                                      textAlign: TextAlign.end,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                              height: config.sh(20),
                              color: Transparent,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Total',
                                      textAlign: TextAlign.end,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 19),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: roqquVoltColor,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 19),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 19),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: roqquVoltColor,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 19),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 19),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: roqquVoltColor,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: roqquVoltColor,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const YMargin(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          NumberFormat('###.00')
                              .format(double.parse(web.open ?? '00')),
                          textAlign: TextAlign.end,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        const XMargin(10),
                        const Icon(
                          Icons.arrow_upward_outlined,
                          color: roqquBuyColor,
                          size: 20,
                        ),
                        const XMargin(10),
                        Text(
                          NumberFormat('###.00')
                              .format(double.parse(web.low ?? '00')),
                          textAlign: TextAlign.end,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ],
                    ),
                    const YMargin(20),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 19),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineLarge,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: roqquBuyColor,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 19),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineLarge,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 19),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineLarge,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: roqquBuyColor,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 19),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineLarge,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 19),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineLarge,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: Transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    height: config.sh(20),
                                    color: roqquBuyColor,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            web.open ?? '',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        );
      },
    );
  }
}
