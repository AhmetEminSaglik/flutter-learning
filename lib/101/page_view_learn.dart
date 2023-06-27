import 'package:flutter/material.dart';
import 'package:flutter_demo/101/icon_learn.dart';
import 'package:flutter_demo/101/image_learn.dart';
import 'package:flutter_demo/101/stack_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 1);
  int _currenctPageIndex = 0;

  void _updatePageIndex(int index) {
    setState(() {
      _currenctPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(_currenctPageIndex.toString()),
            ),
            const Spacer(),
            FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: _DurationUtility._durationLow,
                    curve: Curves.slowMiddle);
              },
              child: _ChevronUtility._chevronLeft,
            ),
            FloatingActionButton(
                onPressed: () {
                  _pageController.nextPage(
                      duration: _DurationUtility._durationLow,
                      curve: Curves.slowMiddle);
                },
                child: _ChevronUtility._chevronRight)
          ]),
      appBar: AppBar(),
      body: PageView(
        padEnds: false,
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: [const ImageLearn(), IconLearnView(), const StackLearn()],
      ),
    );
  }

  FloatingActionButton FloatingActionChevron(Icon icon) {
    return FloatingActionButton(
      onPressed: () {},
      child: icon,
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}

class _ChevronUtility {
  static const _chevronLeft = Icon(Icons.chevron_left);
  static const _chevronRight = Icon(Icons.chevron_right);
}
