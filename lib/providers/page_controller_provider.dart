import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageControllerProvider extends StateNotifier<PageController> {
  PageControllerProvider() : super(PageController());

  void jumpToPageAndScrollToTop(int page, ScrollController scrollController) {
    state.jumpToPage(page);
    scrollController.animateTo(
      0.0,
      curve: Curves.easeOut,
      duration: const Duration(milliseconds: 300),
    );
  }
}

final pageControllerProvider = StateNotifierProvider<PageControllerProvider, PageController>((ref) {
  return PageControllerProvider();
});
