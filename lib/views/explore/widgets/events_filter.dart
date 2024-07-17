import 'package:canoo/providers/events_filter_provider.dart';
import 'package:canoo/theme/app_theme.dart';
import 'package:canoo/view_models/explore_events_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum EventFilter {
  thisWeek,
  nextWeek,
  all,
}

class EventsFilter extends ConsumerStatefulWidget {
  const EventsFilter({super.key});

  @override
  ConsumerState<EventsFilter> createState() => _EventsFilterState();
}

class _EventsFilterState extends ConsumerState<EventsFilter> {
  ButtonStyle _getEventFilterBtnStyle(EventFilter filter, EventFilter currentFilter) {
    if (currentFilter == filter) {
      return Theme.of(context).filledButtonTheme.style!;
    }
    return AppTheme.getInactiveFilledButtonStyle(context);
  }

  @override
  Widget build(BuildContext context) {
    final exploreEventsViewModel = ExploreEventsViewModel(ref);
    final currentFilter = ref.watch(eventsFilterProvider);

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 28, 20, 10),
      child: Row(
        children: [
          FilledButton(
            onPressed: () => exploreEventsViewModel.setEventFilter(EventFilter.thisWeek),
            style: _getEventFilterBtnStyle(EventFilter.thisWeek, currentFilter),
            child: const Text('This week'),
          ),
          const SizedBox(width: 5),
          FilledButton(
            onPressed: () => exploreEventsViewModel.setEventFilter(EventFilter.nextWeek),
            style: _getEventFilterBtnStyle(EventFilter.nextWeek, currentFilter),
            child: const Text('Next week'),
          ),
          const SizedBox(width: 5),
          FilledButton(
            onPressed: () => exploreEventsViewModel.setEventFilter(EventFilter.all),
            style: _getEventFilterBtnStyle(EventFilter.all, currentFilter),
            child: const Text('All'),
          ),
        ],
      ),
    );
  }
}
