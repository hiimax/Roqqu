import '../../../../res/import/import.dart';
import 'package:intl/intl.dart';

class OrderBooks extends StatelessWidget {
  const OrderBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    return Consumer<WebsocketProvider>(
      builder: (context, web, child) {
        return Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 19),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: config.sh(32),
                        width: config.sh(32),
                        color: greyColor,
                        child: Center(
                          child:   Image.asset('assets/images/Frame 980.png'),
                        ),
                      ),

                      XMargin(10),
                      Container(
                        height: config.sh(32),
                        width: config.sh(32),
                        color: Transparent,
                        child: Center(
                          child:     Image.asset('assets/images/Frame 979.png'),
                        ),
                      ),

                      XMargin(10),
                      Container(
                        height: config.sh(32),
                        width: config.sh(32),
                        color: Transparent,
                        child: Center(
                          child:    Image.asset('assets/images/Frame 978.png'),
                        ),
                      ),

                    ],
                  ),
                  Container(
                    height: config.sh(32),
                    width: config.sh(64),
                    color: greyColor,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('10',
                            style: Theme.of(context).textTheme.headline2,),
                          Icon(Icons.keyboard_arrow_down_rounded),
                        ],
                      ),
                    ),
                  )

                ],
              ),),
            Padding(padding: EdgeInsets.only(top: 19),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child:   Container(
                            height: config.sh(20),
                            color: Transparent,
                            child:    Padding(padding: EdgeInsets.only(left: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Price\n(USDT)',
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context).textTheme.bodyText1,),
                                ],
                              ),)
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child:    Container(
                            height: config.sh(20),
                            color: Transparent,
                            child:  Padding(padding: EdgeInsets.only(right: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('Amounts\n(BTC)',
                                    textAlign: TextAlign.end,
                                    style: Theme.of(context).textTheme.bodyText1,),
                                ],
                              ),)
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child:   Container(
                            height: config.sh(20),
                            color: Transparent,
                            child:  Padding(padding: EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Total',
                                  textAlign: TextAlign.end,
                                  style: Theme.of(context).textTheme.bodyText1,),
                              ],
                            ),)
                        ),
                      ),

                    ],
                  ),
                 Column(children: [
                   Padding(padding: EdgeInsets.only(top: 19),
                     child:  Row(
                       children: [
                         Expanded(
                           flex: 1,
                           child:   Container(
                               height: config.sh(20),
                               color: Transparent,
                               child:  Padding(padding: EdgeInsets.only(left: 30),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     Text(web.open ?? '',
                                       textAlign: TextAlign.end,
                                       style: Theme.of(context).textTheme.headline5,),
                                   ],
                                 ),)
                           ),
                         ),

                         Expanded(
                           flex: 1,
                           child:   Container(
                               height: config.sh(20),
                               color: Transparent,
                               child:  Padding(padding: EdgeInsets.only(right: 20),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   children: [
                                     Text(web.open ?? '',
                                       textAlign: TextAlign.end,
                                       style: Theme.of(context).textTheme.headline6,),
                                   ],
                                 ),)
                           ),
                         ),

                         Expanded(
                           flex: 1,
                           child:   Container(
                               height: config.sh(20),
                               color: roqquVoltColor,
                               child:  Padding(padding: EdgeInsets.only(right: 20),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   children: [
                                     Text(web.open ?? '',
                                       textAlign: TextAlign.end,
                                       style: Theme.of(context).textTheme.headline6,),
                                   ],
                                 ),)
                           ),
                         ),

                       ],
                     ),),
                   Padding(padding: EdgeInsets.only(top: 19),
                     child:  Row(
                       children: [
                         Expanded(
                           flex: 1,
                           child:   Container(
                               height: config.sh(20),
                               color: Transparent,
                               child:  Padding(padding: EdgeInsets.only(left: 30),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     Text(web.open ?? '',
                                       textAlign: TextAlign.end,
                                       style: Theme.of(context).textTheme.headline5,),
                                   ],
                                 ),)
                           ),
                         ),

                         Expanded(
                           flex: 1,
                           child:   Container(
                               height: config.sh(20),
                               color: Transparent,
                               child:  Padding(padding: EdgeInsets.only(right: 20),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   children: [
                                     Text(web.open ?? '',
                                       textAlign: TextAlign.end,
                                       style: Theme.of(context).textTheme.headline6,),
                                   ],
                                 ),)
                           ),
                         ),

                         Expanded(
                           flex: 1,
                           child:   Container(
                               height: config.sh(20),
                               color: Transparent,
                               child:  Padding(padding: EdgeInsets.only(right: 20),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   children: [
                                     Text(web.open ?? '',
                                       textAlign: TextAlign.end,
                                       style: Theme.of(context).textTheme.headline6,),
                                   ],
                                 ),)
                           ),
                         ),

                       ],
                     ),),
                   Padding(padding: EdgeInsets.only(top: 19),
                     child:  Row(
                       children: [
                         Expanded(
                           flex: 1,
                           child:   Container(
                               height: config.sh(20),
                               color: Transparent,
                               child:  Padding(padding: EdgeInsets.only(left: 30),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     Text(web.open ?? '',
                                       textAlign: TextAlign.end,
                                       style: Theme.of(context).textTheme.headline5,),
                                   ],
                                 ),)
                           ),
                         ),

                         Expanded(
                           flex: 1,
                           child:   Container(
                               height: config.sh(20),
                               color: Transparent,
                               child:  Padding(padding: EdgeInsets.only(right: 20),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   children: [
                                     Text(web.open ?? '',
                                       textAlign: TextAlign.end,
                                       style: Theme.of(context).textTheme.headline6,),
                                   ],
                                 ),)
                           ),
                         ),

                         Expanded(
                           flex: 1,
                           child:   Container(
                               height: config.sh(20),
                               color: roqquVoltColor,
                               child:  Padding(padding: EdgeInsets.only(right: 20),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   children: [
                                     Text(web.open ?? '',
                                       textAlign: TextAlign.end,
                                       style: Theme.of(context).textTheme.headline6,),
                                   ],
                                 ),)
                           ),
                         ),

                       ],
                     ),),
                   Padding(padding: EdgeInsets.only(top: 19),
                     child:  Row(
                       children: [
                         Expanded(
                           flex: 1,
                           child:   Container(
                               height: config.sh(20),
                               color: Transparent,
                               child:  Padding(padding: EdgeInsets.only(left: 30),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     Text(web.open ?? '',
                                       textAlign: TextAlign.end,
                                       style: Theme.of(context).textTheme.headline5,),
                                   ],
                                 ),)
                           ),
                         ),

                         Expanded(
                           flex: 1,
                           child:   Container(
                               height: config.sh(20),
                               color: Transparent,
                               child:  Padding(padding: EdgeInsets.only(right: 20),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   children: [
                                     Text(web.open ?? '',
                                       textAlign: TextAlign.end,
                                       style: Theme.of(context).textTheme.headline6,),
                                   ],
                                 ),)
                           ),
                         ),

                         Expanded(
                           flex: 1,
                           child:   Container(
                               height: config.sh(20),
                               color: Transparent,
                               child:  Padding(padding: EdgeInsets.only(right: 20),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   children: [
                                     Text(web.open ?? '',
                                       textAlign: TextAlign.end,
                                       style: Theme.of(context).textTheme.headline6,),
                                   ],
                                 ),)
                           ),
                         ),

                       ],
                     ),),
                   Padding(padding: EdgeInsets.only(top: 19),
                     child:  Row(
                       children: [
                         Expanded(
                           flex: 1,
                           child:   Container(
                               height: config.sh(20),
                               color: Transparent,
                               child:  Padding(padding: EdgeInsets.only(left: 30),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     Text(web.open ?? '',
                                       textAlign: TextAlign.end,
                                       style: Theme.of(context).textTheme.headline5,),
                                   ],
                                 ),)
                           ),
                         ),

                         Expanded(
                           flex: 1,
                           child:   Container(
                               height: config.sh(20),
                               color: roqquVoltColor,
                               child:  Padding(padding: EdgeInsets.only(right: 20),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   children: [
                                     Text(web.open ?? '',
                                       textAlign: TextAlign.end,
                                       style: Theme.of(context).textTheme.headline6,),
                                   ],
                                 ),)
                           ),
                         ),

                         Expanded(
                           flex: 1,
                           child:   Container(
                               height: config.sh(20),
                               color: roqquVoltColor,
                               child:  Padding(padding: EdgeInsets.only(right: 20),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   children: [
                                     Text(web.open ?? '',
                                       textAlign: TextAlign.end,
                                       style: Theme.of(context).textTheme.headline6,),
                                   ],
                                 ),)
                           ),
                         ),

                       ],
                     ),),
                 ],),
                  YMargin(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(NumberFormat('###.00').format(double.parse(web.open ?? '00')),
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.headline3,),
                      XMargin(10),
                      Icon(Icons.arrow_upward_outlined,color: roqquBuyColor,size: 20,),
                      XMargin(10),
                      Text(NumberFormat('###.00').format(double.parse(web.low ?? '00')),
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.headline2,),

                    ],
                  ),
                  YMargin(20),
                  Column(children: [
                    Padding(padding: EdgeInsets.only(top: 19),
                      child:  Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child:   Container(
                                height: config.sh(20),
                                color: Transparent,
                                child:  Padding(padding: EdgeInsets.only(left: 30),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(web.open ?? '',
                                        textAlign: TextAlign.end,
                                        style: Theme.of(context).textTheme.headlineLarge,),
                                    ],
                                  ),)
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child:   Container(
                                height: config.sh(20),
                                color: Transparent,
                                child:  Padding(padding: EdgeInsets.only(right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(web.open ?? '',
                                        textAlign: TextAlign.end,
                                        style: Theme.of(context).textTheme.headline6,),
                                    ],
                                  ),)
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child:   Container(
                                height: config.sh(20),
                                color: roqquBuyColor,
                                child:  Padding(padding: EdgeInsets.only(right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(web.open ?? '',
                                        textAlign: TextAlign.end,
                                        style: Theme.of(context).textTheme.headline6,),
                                    ],
                                  ),)
                            ),
                          ),

                        ],
                      ),),
                    Padding(padding: EdgeInsets.only(top: 19),
                      child:  Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child:   Container(
                                height: config.sh(20),
                                color: Transparent,
                                child:  Padding(padding: EdgeInsets.only(left: 30),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(web.open ?? '',
                                        textAlign: TextAlign.end,
                                        style: Theme.of(context).textTheme.headlineLarge,),
                                    ],
                                  ),)
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child:   Container(
                                height: config.sh(20),
                                color: Transparent,
                                child:  Padding(padding: EdgeInsets.only(right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(web.open ?? '',
                                        textAlign: TextAlign.end,
                                        style: Theme.of(context).textTheme.headline6,),
                                    ],
                                  ),)
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child:   Container(
                                height: config.sh(20),
                                color: Transparent,
                                child:  Padding(padding: EdgeInsets.only(right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(web.open ?? '',
                                        textAlign: TextAlign.end,
                                        style: Theme.of(context).textTheme.headline6,),
                                    ],
                                  ),)
                            ),
                          ),

                        ],
                      ),),
                    Padding(padding: EdgeInsets.only(top: 19),
                      child:  Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child:   Container(
                                height: config.sh(20),
                                color: Transparent,
                                child:  Padding(padding: EdgeInsets.only(left: 30),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(web.open ?? '',
                                        textAlign: TextAlign.end,
                                        style: Theme.of(context).textTheme.headlineLarge,),
                                    ],
                                  ),)
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child:   Container(
                                height: config.sh(20),
                                color: Transparent,
                                child:  Padding(padding: EdgeInsets.only(right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(web.open ?? '',
                                        textAlign: TextAlign.end,
                                        style: Theme.of(context).textTheme.headline6,),
                                    ],
                                  ),)
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child:   Container(
                                height: config.sh(20),
                                color: roqquBuyColor,
                                child:  Padding(padding: EdgeInsets.only(right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(web.open ?? '',
                                        textAlign: TextAlign.end,
                                        style: Theme.of(context).textTheme.headline6,),
                                    ],
                                  ),)
                            ),
                          ),

                        ],
                      ),),
                    Padding(padding: EdgeInsets.only(top: 19),
                      child:  Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child:   Container(
                                height: config.sh(20),
                                color: Transparent,
                                child:  Padding(padding: EdgeInsets.only(left: 30),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(web.open ?? '',
                                        textAlign: TextAlign.end,
                                        style: Theme.of(context).textTheme.headlineLarge,),
                                    ],
                                  ),)
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child:   Container(
                                height: config.sh(20),
                                color: Transparent,
                                child:  Padding(padding: EdgeInsets.only(right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(web.open ?? '',
                                        textAlign: TextAlign.end,
                                        style: Theme.of(context).textTheme.headline6,),
                                    ],
                                  ),)
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child:   Container(
                                height: config.sh(20),
                                color: Transparent,
                                child:  Padding(padding: EdgeInsets.only(right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(web.open ?? '',
                                        textAlign: TextAlign.end,
                                        style: Theme.of(context).textTheme.headline6,),
                                    ],
                                  ),)
                            ),
                          ),

                        ],
                      ),),
                    Padding(padding: EdgeInsets.only(top: 19),
                      child:  Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child:   Container(
                                height: config.sh(20),
                                color: Transparent,
                                child:  Padding(padding: EdgeInsets.only(left: 30),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(web.open ?? '',
                                        textAlign: TextAlign.end,
                                        style: Theme.of(context).textTheme.headlineLarge,),
                                    ],
                                  ),)
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child:   Container(
                                height: config.sh(20),
                                color: Transparent,
                                child:  Padding(padding: EdgeInsets.only(right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(web.open ?? '',
                                        textAlign: TextAlign.end,
                                        style: Theme.of(context).textTheme.headline6,),
                                    ],
                                  ),)
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child:   Container(
                                height: config.sh(20),
                                color: roqquBuyColor,
                                child:  Padding(padding: EdgeInsets.only(right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(web.open ?? '',
                                        textAlign: TextAlign.end,
                                        style: Theme.of(context).textTheme.headline6,),
                                    ],
                                  ),)
                            ),
                          ),

                        ],
                      ),),
                  ],),
                ],
              )
            ),

          ],
        );
      },
    );
  }
}
