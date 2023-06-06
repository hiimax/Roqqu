import '../../../../res/import/import.dart';

class ChartsOrderbookTrades extends StatelessWidget {
  ChartsOrderbookTrades({Key? key}) : super(key: key);
  int Index = 0;

  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    return StatefulBuilder(builder: (context, setState) {
      return Consumer2<WebsocketProvider, ThemeProvider>(
        builder: (context, web, theme, _) {
          return Container(
            height: Index == 0
                ? config.sh(591)
                : Index == 1
                    ? config.sh(700)
                    : config.sh(350),
            width: MediaQuery.of(context).size.width,
            color: theme.isDarkTheme ? roqqueDarkColor : roqquWhite,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Container(
                    height: config.sh(40),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: theme.isDarkTheme
                          ? cardStrokeDarkColor
                          : cardStrokeColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              Index = 0;
                            });
                          },
                          child: ToggleWidget(
                            title: 'Charts',
                            color: theme.isDarkTheme && Index != 0
                                ? Transparent
                                : theme.isDarkTheme && Index == 0
                                    ? roqquDarkBackgroundColor
                                    : !theme.isDarkTheme && Index == 0
                                        ? roqquWhite
                                        : Transparent,
                            shadow: theme.isDarkTheme && Index != 0
                                ? Transparent
                                : theme.isDarkTheme && Index == 0
                                    ? roqquGrey.withOpacity(0.2)
                                    : !theme.isDarkTheme && Index == 0
                                        ? roqquGrey.withOpacity(0.5)
                                        : Transparent,
                            width: MediaQuery.of(context).size.width / 3.3,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Index = 1;
                            });
                          },
                          child: ToggleWidget(
                            title: 'Orderbook',
                            color: theme.isDarkTheme && Index != 1
                                ? Transparent
                                : theme.isDarkTheme && Index == 1
                                    ? roqquDarkBackgroundColor
                                    : !theme.isDarkTheme && Index == 1
                                        ? roqquWhite
                                        : Transparent,
                            shadow: theme.isDarkTheme && Index != 1
                                ? Transparent
                                : theme.isDarkTheme && Index == 1
                                    ? roqquGrey.withOpacity(0.2)
                                    : !theme.isDarkTheme && Index == 1
                                        ? roqquGrey.withOpacity(0.5)
                                        : Transparent,
                            width: MediaQuery.of(context).size.width / 3.3,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Index = 2;
                            });
                          },
                          child: ToggleWidget(
                            title: 'Recent trades',
                            color: theme.isDarkTheme && Index != 2
                                ? Transparent
                                : theme.isDarkTheme && Index == 2
                                    ? roqquDarkBackgroundColor
                                    : !theme.isDarkTheme && Index == 2
                                        ? roqquWhite
                                        : Transparent,
                            shadow: theme.isDarkTheme && Index != 2
                                ? Transparent
                                : theme.isDarkTheme && Index == 2
                                    ? roqquGrey.withOpacity(0.2)
                                    : !theme.isDarkTheme && Index == 2
                                        ? roqquGrey.withOpacity(0.5)
                                        : Transparent,
                            width: MediaQuery.of(context).size.width / 3.3,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (Index == 0)
                  Consumer<WebsocketProvider>(
                    builder: (context, web, child) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Time',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            InkWell(
                                onTap: () {
                                  web.value = '1h';
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: theme.isDarkTheme &&
                                            web.value != '1h'
                                        ? Transparent
                                        : theme.isDarkTheme && web.value == '1h'
                                            ? roqquDarkSelectionColor
                                            : !theme.isDarkTheme &&
                                                    web.value == '1h'
                                                ? greyColor
                                                : Transparent,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Text(
                                      '1H',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ),
                                )),
                            InkWell(
                                onTap: () {
                                  web.value = '2h';
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: theme.isDarkTheme &&
                                            web.value != '2h'
                                        ? Transparent
                                        : theme.isDarkTheme && web.value == '2h'
                                            ? roqquDarkSelectionColor
                                            : !theme.isDarkTheme &&
                                                    web.value == '2h'
                                                ? greyColor
                                                : Transparent,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Text(
                                      '2H',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ),
                                )),
                            InkWell(
                                onTap: () {
                                  web.value = '4h';
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: theme.isDarkTheme &&
                                            web.value != '4h'
                                        ? Transparent
                                        : theme.isDarkTheme && web.value == '4h'
                                            ? roqquDarkSelectionColor
                                            : !theme.isDarkTheme &&
                                                    web.value == '4h'
                                                ? greyColor
                                                : Transparent,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Text(
                                      '4H',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ),
                                )),
                            InkWell(
                                onTap: () {
                                  web.value = '1d';
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: theme.isDarkTheme &&
                                            web.value != '1d'
                                        ? Transparent
                                        : theme.isDarkTheme && web.value == '1d'
                                            ? roqquDarkSelectionColor
                                            : !theme.isDarkTheme &&
                                                    web.value == '1d'
                                                ? greyColor
                                                : Transparent,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Text(
                                      '1D',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ),
                                )),
                            InkWell(
                                onTap: () {
                                  web.value = '1w';
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: theme.isDarkTheme &&
                                            web.value != '1w'
                                        ? Transparent
                                        : theme.isDarkTheme && web.value == '1w'
                                            ? roqquDarkSelectionColor
                                            : !theme.isDarkTheme &&
                                                    web.value == '1w'
                                                ? greyColor
                                                : Transparent,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Text(
                                      '1W',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ),
                                )),
                            InkWell(
                                onTap: () {
                                  web.value = '1m';
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: theme.isDarkTheme &&
                                            web.value != '1m'
                                        ? Transparent
                                        : theme.isDarkTheme && web.value == '1m'
                                            ? roqquDarkSelectionColor
                                            : !theme.isDarkTheme &&
                                                    web.value == '1m'
                                                ? greyColor
                                                : Transparent,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Text(
                                      '1M',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ),
                                )),
                            const Icon(Icons.keyboard_arrow_down_outlined),
                            Image.asset('assets/images/Candle Chart 1.png'),
                            Text(
                              'Fx',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                Flexible(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Index == 0
                      ? const Charts()
                      : Index == 1
                          ? const OrderBooks()
                          : RecentTrades(),
                )),
              ],
            ),
          );
        },
      );
    });
  }
}
