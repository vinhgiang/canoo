import 'package:canoo/providers/events_filter_provider.dart';
import 'package:canoo/views/explore/widgets/events_filter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExploreEventsViewModel {
  final WidgetRef ref;

  ExploreEventsViewModel(this.ref);

  void setEventFilter(EventFilter filter) {
    ref.read(eventsFilterProvider.notifier).setEventFilter(filter);
  }
}
