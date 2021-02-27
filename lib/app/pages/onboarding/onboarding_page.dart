import 'package:Dayly/app/core/bloc/onboarding/onboarding_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:Dayly/app/router.gr.dart';

import 'components/choose_theme.dart';
import 'components/connect_calendar.dart';
import 'components/create_tags.dart';
import 'components/welcome_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final  controller = PageController(initialPage: 0);
  final ValueNotifier<int> pageNotifier = ValueNotifier(0);

  @override
  void dispose() { 
    controller.dispose();
    pageNotifier.dispose();
    super.dispose();
  }

  List<Widget> pages = <Widget>[
    WelcomePage(),
    ChooseThemePage(),
    CreateTagsPage(),
    ConnectCalendarPage()
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        controller.previousPage(
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
        return false;
      },
      child: KeyboardDismissOnTap(
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: PageView(
                controller: controller,
                physics: ClampingScrollPhysics(),
                onPageChanged: (index) {
                  pageNotifier.value = index;
                },
                children: pages,
              ),
            ),
          ),
          bottomNavigationBar: SizedBox(
            height: 56,
            child: _buildBottomNavigation()
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigation() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 88),
        Expanded(
          child: Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: pages.length,
              effect:  WormEffect(
                dotHeight: 8.0,
                dotWidth: 8.0,
                dotColor: Theme.of(context).colorScheme.primaryVariant,
                activeDotColor: Theme.of(context).colorScheme.secondary,
                spacing: 16.0
              ),
            ),
          )
        ),
        Container(
          width: 88,
          alignment: Alignment.center,
          child: ValueListenableBuilder<int>(
            valueListenable: pageNotifier,
            builder: (context, index, _) {
              return index + 1 < pages.length
                ? IconButton(
                  onPressed: () => controller.animateToPage(
                    index + 1,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn
                  ),
                  icon: Icon(Icons.arrow_forward),
                )
                : FlatButton(
                  child: Text('Done'),
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    await prefs.setBool('onboardingDone', true);
                    ExtendedNavigator.of(context).push(Routes.homePage);
                  },
                );
            } ,
          )
        )
      ],
    );
  }
}