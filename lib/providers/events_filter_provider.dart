import 'package:canoo/views/explore/widgets/events_filter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EventsFilterProvider extends StateNotifier<EventFilter> {
  EventsFilterProvider() : super(EventFilter.all);

  EventFilter get eventFilter => state;

  void setEventFilter(EventFilter filter) {
    state = filter;
  }
}

final eventsFilterProvider = StateNotifierProvider<EventsFilterProvider, EventFilter>((ref) {
  return EventsFilterProvider();
});
