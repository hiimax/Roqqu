import '../../../../res/import/import.dart';

class BuySellBottomSheet extends StatelessWidget {
  BuySellBottomSheet({Key? key}) : super(key: key);
  int Index = 0;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    return Consumer2<WebsocketProvider, ThemeProvider>(
      builder: (context, web, theme, _) {
        return SizedBox(
          height: config.sh(700),
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: SingleChildScrollView(
              child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
                  return Column(children: [
                    Container(
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
                              title: 'Buy',
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
                              width: MediaQuery.of(context).size.width / 2.2,
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
                              title: 'Sell',
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
                              width: MediaQuery.of(context).size.width / 2.2,
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const YMargin(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: theme.isDarkTheme
                                    ? roqquDarkSelectionColor
                                    : greyColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  'Limit',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                            )),
                        InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Transparent,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  'Market',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                            )),
                        InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Transparent,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  'Stop-Limit',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                            )),
                      ],
                    ),
                    const YMargin(20),
                    Container(
                        height: config.sh(40),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: roqquSecondaryTextColor,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(children: [
                                  Text(
                                    'Limit price',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  const XMargin(10),
                                  Image.asset(
                                      'assets/images/u_info-circle.png'),
                                ]),
                                SizedBox(
                                  width: config.sw(100),
                                  child: CustomTextFormField(
                                      textStyle: TextStyle(
                                          fontFamily: "Helvetica Neue",
                                          fontWeight: FontWeight.w500,
                                          color: theme.isDarkTheme
                                              ? roqquWhite
                                              : roqquBlack,
                                          fontSize: 16.0),
                                      hintText: '0.00 USD '),
                                )
                              ]),
                        )),
                    const YMargin(20),
                    Container(
                        height: config.sh(40),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: roqquSecondaryTextColor,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(children: [
                                  Text(
                                    'Amount',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  const XMargin(10),
                                  Image.asset(
                                      'assets/images/u_info-circle.png'),
                                ]),
                                SizedBox(
                                  width: config.sw(100),
                                  child: CustomTextFormField(
                                      textStyle: TextStyle(
                                          fontFamily: "Helvetica Neue",
                                          fontWeight: FontWeight.w500,
                                          color: theme.isDarkTheme
                                              ? roqquWhite
                                              : roqquBlack,
                                          fontSize: 16.0),
                                      hintText: '0.00 USD '),
                                )
                              ]),
                        )),
                    const YMargin(20),
                    Container(
                        height: config.sh(40),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: roqquSecondaryTextColor,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(children: [
                                  Text(
                                    'Type',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  const XMargin(10),
                                  Image.asset(
                                      'assets/images/u_info-circle.png'),
                                ]),
                                Row(children: [
                                  Text(
                                    'Good till cancelled',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  const XMargin(10),
                                  const Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: roqquSecondaryTextColor,
                                  ),
                                ]),
                              ]),
                        )),
                    const YMargin(20),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isChecked = newValue ?? false;
                          });
                        },
                      ),
                      const XMargin(5),
                      Text(
                        'Post Only',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const XMargin(10),
                      Image.asset('assets/images/u_info-circle.png'),
                    ]),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            Text(
                              '0.00',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ]),
                    ),
                    const YMargin(20),
                    Container(
                        height: config.sh(32),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff483BEB),
                              Color(0xffDD568D),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.3, 1.0],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            Index != 1 ? 'Buy BTC' : 'Sell BTC',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: roqquWhite,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )),
                    const YMargin(20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total account value',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            Row(children: [
                              Text(
                                'NGN',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              const XMargin(10),
                              const Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: roqquSecondaryTextColor,
                              ),
                            ])
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '0.00',
                              style: TextStyle(
                                fontSize: 14.0,
                                color:
                                    theme.isDarkTheme ? roqquWhite : roqquBlack,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ]),
                    ),
                    const YMargin(20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Open Orders',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            Text(
                              'Available',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '0.00',
                              style: TextStyle(
                                fontSize: 14.0,
                                color:
                                    theme.isDarkTheme ? roqquWhite : roqquBlack,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '0.00',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: roqquBlack,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ]),
                    ),
                    const YMargin(20),
                    Row(children: [
                      SizedBox(
                        height: config.sh(32),
                        width: config.sw(80),
                        child: CustomButton2(
                          title: 'Deposit',
                          buttonColor: roqquFountainblueColor,
                          textColor: roqquWhite,
                          textSize: 14,
                        ),
                      ),
                    ]),
                    const YMargin(20),
                  ]);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
