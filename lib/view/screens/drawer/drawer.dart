import '../../../res/import/import.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final config = SizeConfig();
    String selected = 'none';
    return Drawer(
        backgroundColor: Transparent,
        child: StatefulBuilder(builder: (context, setState) {
          return Consumer<ThemeProvider>(
            builder: (context, theme, child) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:
                      theme.isDarkTheme ? roqquDarkBackgroundColor : roqquWhite,
                ),
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Column(
                    children: [
                      YMargin(10),
                      CustomTextFormField(
                        hintText: 'Search',
                        textStyle: theme.isDarkTheme ? roqquWhite : roqquBlack,
                        focusedBorderColor: roqquSecondaryTextColor,
                        errorBorderColor: roqquSecondaryTextColor,
                        enabledBorderColor: roqquSecondaryTextColor,
                        suffixIcon: Icon(
                          Icons.search,
                          color: roqquFountainblueColor,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selected = 'Exchange';
                          });
                        },
                        child: Container(
                          height: config.sh(40),
                          decoration: BoxDecoration(
                            color: theme.isDarkTheme && selected == 'Exchange'
                                ? roqquWhite
                                : theme.isDarkTheme && selected != 'Exchange'
                                    ? roqquDarkBackgroundColor
                                    : !theme.isDarkTheme &&
                                            selected == 'Exchange'
                                        ? roqquGrey
                                        : roqquWhite,
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    'Exchange',
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selected = 'Wallets';
                          });
                        },
                        child: Container(
                          height: config.sh(40),
                          decoration: BoxDecoration(
                            color: theme.isDarkTheme && selected == 'Wallets'
                                ? roqquWhite
                                : theme.isDarkTheme && selected != 'Wallets'
                                    ? roqquDarkBackgroundColor
                                    : !theme.isDarkTheme &&
                                            selected == 'Wallets'
                                        ? roqquGrey
                                        : roqquWhite,
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    'Wallets',
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selected = 'Roqqu Hub';
                          });
                        },
                        child: Container(
                          height: config.sh(40),
                          decoration: BoxDecoration(
                            color: theme.isDarkTheme && selected == 'Roqqu Hub'
                                ? roqquWhite
                                : theme.isDarkTheme && selected != 'Roqqu Hub'
                                    ? roqquDarkBackgroundColor
                                    : !theme.isDarkTheme &&
                                            selected == 'Roqqu Hub'
                                        ? roqquGrey
                                        : roqquWhite,
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    'Roqqu Hub',
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selected = 'Log out';
                          });
                        },
                        child: Container(
                          height: config.sh(40),
                          decoration: BoxDecoration(
                            color: theme.isDarkTheme && selected == 'Log out'
                                ? roqquWhite
                                : theme.isDarkTheme && selected != 'Log out'
                                    ? roqquDarkBackgroundColor
                                    : !theme.isDarkTheme &&
                                            selected == 'Log out'
                                        ? roqquGrey
                                        : roqquWhite,
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    'Log out ',
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          theme.toggleTheme();
                        },
                        child: Container(
                          height: config.sh(40),
                          decoration: BoxDecoration(
                            color: theme.isDarkTheme
                                ? roqquDarkBackgroundColor
                                : roqquWhite,
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    theme.isDarkTheme == true
                                        ? 'Light Theme'
                                        : 'Dark Theme',
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }));
  }
}
