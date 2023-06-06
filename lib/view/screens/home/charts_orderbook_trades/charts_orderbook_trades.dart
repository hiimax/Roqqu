import '../../../../res/import/import.dart';
import 'package:http/http.dart' as http;

class ChartsOrderbookTrades extends StatelessWidget {
  ChartsOrderbookTrades({Key? key}) : super(key: key);
  int Index = 0;

  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    return StatefulBuilder(builder: (context, setState) {
      return Container(
        height: Index == 0 ? config.sh(591) : config.sh(700),
        width: MediaQuery.of(context).size.width,
        color: roqquWhite,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Container(
                height: config.sh(40),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: cardStrokeColor,
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
                        color: Index != 0 ? Transparent : roqquWhite,
                        shadow: Index != 0
                            ? Transparent
                            : roqquGrey.withOpacity(0.5),
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
                        color: Index != 1 ? Transparent : roqquWhite,
                        shadow: Index != 1
                            ? Transparent
                            : roqquGrey.withOpacity(0.5),
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
                        color: Index != 2 ? Transparent : roqquWhite,
                        shadow: Index != 2
                            ? Transparent
                            : roqquGrey.withOpacity(0.5),
                        width: MediaQuery.of(context).size.width / 3.3,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Consumer<WebsocketProvider>(
              builder: (context, web, child) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                              color:
                                  web.value == '1h' ? greyColor : Transparent,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: Text(
                                '1H',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                          )),
                      InkWell(
                          onTap: () {
                            web.value = '2h';
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  web.value == '2h' ? greyColor : Transparent,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: Text(
                                '2H',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                          )),
                      InkWell(
                          onTap: () {
                            web.value = '4h';
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  web.value == '4h' ? greyColor : Transparent,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: Text(
                                '4H',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                          )),
                      InkWell(
                          onTap: () {
                            web.value = '1d';
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  web.value == '1d' ? greyColor : Transparent,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: Text(
                                '1D',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                          )),
                      InkWell(
                          onTap: () {
                            web.value = '1w';
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  web.value == '1w' ? greyColor : Transparent,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: Text(
                                '1W',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                          )),
                      InkWell(
                          onTap: () {
                            web.value = '1m';
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  web.value == '1m' ? greyColor : Transparent,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: Text(
                                '1M',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                          )),
                      Icon(Icons.keyboard_arrow_down_outlined),
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
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Index == 0 ? Charts() : OrderBooks(),
            )),
          ],
        ),
      );
    });
  }
}
