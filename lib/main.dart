import 'package:provider/provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:firebase_core/firebase_core.dart';
import 'auth/firebase_auth/firebase_user_provider.dart';
import 'auth/firebase_auth/auth_util.dart';

import 'backend/firebase/firebase_config.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initFirebase();

  final appState = FFAppState(); // Initialize FFAppState
  await appState.initializePersistedState();

  if (!kIsWeb) {
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  }

  runApp(ChangeNotifierProvider(
    create: (context) => appState,
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = ThemeMode.system;

  late Stream<BaseAuthUser> userStream;
  BaseAuthUser? initialUser;
  bool displaySplashImage = true;

  final authUserSub = authenticatedUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();
    userStream = gooseFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
    jwtTokenStream.listen((_) {});
    Future.delayed(
      Duration(seconds: 1),
      () => setState(() => displaySplashImage = false),
    );
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'goose',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('en'),
      ],
      theme: ThemeData(brightness: Brightness.light),
      themeMode: _themeMode,
      home: initialUser == null || displaySplashImage
          ? Builder(
              builder: (context) => Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            )
          : currentUser!.loggedIn
              ? NavBarPage()
              : SignInOptionsWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key? key, this.initialPage, this.page}) : super(key: key);

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'home_page';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'home_page': HomePageWidget(),
      'post_page': PostPageWidget(),
      'profile_screen': ProfileScreenWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);

    final MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      body: MediaQuery(
          data: queryData
              .removeViewInsets(removeBottom: true)
              .removeViewPadding(removeBottom: true),
          child: _currentPage ?? tabs[_currentPageName]!),
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          _currentPage = null;
          _currentPageName = tabs.keys.toList()[i];
        }),
        backgroundColor: Color(0xFF494646),
        selectedItemColor: Color(0xFFF0364C),
        unselectedItemColor: Colors.white,
        selectedBackgroundColor: Color(0x00000000),
        borderRadius: 8.0,
        itemBorderRadius: 8.0,
        margin: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        width: double.infinity,
        elevation: 0.0,
        items: [
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.home,
                  color: currentIndex == 0 ? Color(0xFFF0364C) : Colors.white,
                  size: 24.0,
                ),
                Text(
                  'Home',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 0 ? Color(0xFFF0364C) : Colors.white,
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_circle_outlined,
                  color: currentIndex == 1 ? Color(0xFFF0364C) : Colors.white,
                  size: 24.0,
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.solidUser,
                  color: currentIndex == 2 ? Color(0xFFF0364C) : Colors.white,
                  size: 24.0,
                ),
                Text(
                  'Profile',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 2 ? Color(0xFFF0364C) : Colors.white,
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
