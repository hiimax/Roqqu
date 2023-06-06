import '../../../res/import/import.dart';
import 'package:intl/intl.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    return Scaffold(
      appBar: CustomAppbar(
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              XMargin(15),
              Image.asset('assets/images/Logomark.png'),
              XMargin(10),
              Image.asset('assets/images/Logotype.png'), // Add Spacer widget
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/81.png'),
              XMargin(10),
              Image.asset('assets/images/Line.png'),
              XMargin(10),
              Image.asset('assets/images/menu-alt-1.png'),
              XMargin(15),
            ],
          )
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            HomeScreenWidget(),
            Builder(builder: (ctx){
              return  Container(
                height: config.sh(64),
                width: MediaQuery.of(context).size.width,
                color: roqquWhite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2.3,
                      height: config.sh(32),
                      child:  CustomButton2(
                        buttonColor: roqquBuyColor,
                        borderColor:  roqquBuyColor,
                        textColor: roqquWhite,
                        title: 'Buy',
                        onPressed: (){
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return BuySellBottomSheet();
                            },
                          );
                        }
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2.3,
                      height: config.sh(32),
                      child:  CustomButton2(
                        buttonColor: roqquSellColor,
                        borderColor:  roqquSellColor,
                        textColor: roqquWhite,
                        title: 'Sell',
                      ),
                    ),
                  ],
                ),
              );
            }),
            YMargin(30),
          ],
        ),
      )
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
          YMargin(10),
          Consumer<WebsocketProvider>(
            builder: (context, web, child) {
              return Container(
                height: config.sh(140),
                width: MediaQuery.of(context).size.width,
                color: roqquWhite,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(16),
                      child:   Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/Group 237550.png'),
                          XMargin(10),
                          Text('BTC/USDT',
                            style: Theme.of(context).textTheme.headline2,),
                          XMargin(20),
                          Icon(Icons.keyboard_arrow_down_outlined),
                          XMargin(27),
                          Text('\$${NumberFormat('#,##0').format(double.parse(web.open ?? '00'))}',
                            style: Theme.of(context).textTheme.headline3,),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(16),
                      child:   Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.access_time),
                                  XMargin(5),
                                  Text('24h change',
                                    style: Theme.of(context).textTheme.bodyText1,),
                                ],
                              ),
                              YMargin(8),
                              Text('${NumberFormat('###.00').format(double.parse(web.change ?? '00'))} ${ decimalValue(web.change ?? '00.00')}',
                                style: Theme.of(context).textTheme.headline3,),
                              XMargin(10),

                            ],
                          ),
                          Image.asset('assets/images/divider.png'),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.arrow_upward_outlined),
                                  XMargin(5),
                                  Text('24h high',
                                    style: Theme.of(context).textTheme.bodyText1,),
                                ],
                              ),
                              YMargin(8),
                              Text('${NumberFormat('###.00').format(double.parse(web.high ?? '00'))} ${ decimalValue(web.high ?? '00.00')}',
                                style: Theme.of(context).textTheme.headline2,),
                              XMargin(10),

                            ],
                          ),
                          Image.asset('assets/images/divider.png'),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              XMargin(10),
                              Row(
                                children: [
                                  Icon(Icons.arrow_downward_outlined),
                                  XMargin(5),
                                  Text('24h low',
                                    style: Theme.of(context).textTheme.bodyText1,),
                                ],
                              ),
                              YMargin(8),
                              Text('${NumberFormat('###.00').format(double.parse(web.low ?? '00'))} ${ decimalValue(web.low ?? '00.00')}',
                                style: Theme.of(context).textTheme.headline2,),
                              XMargin(10),

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
          YMargin(10),
          ChartsOrderbookTrades(),
          YMargin(10),
          OpenOrderHistory(),
          YMargin(62),
        ],
      ),
    );
  }
}
