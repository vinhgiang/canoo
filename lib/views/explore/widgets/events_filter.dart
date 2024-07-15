import 'package:canoo/theme/app_theme.dart';
import 'package:flutter/material.dart';

enum EventFilter {
  thisWeek,
  nextWeek,
  all,
}

class EventsFilter extends StatefulWidget {
  const EventsFilter({super.key});

  @override
  State<StatefulWidget> createState() => _EventsFilterState();
}

class _EventsFilterState extends State<EventsFilter> {
  EventFilter _eventFilter = EventFilter.all;

  void _setEventFilter(EventFilter filter) {
    setState(() {
      _eventFilter = filter;
    });
  }

  ButtonStyle _getEventFilterBtnStyle(EventFilter filter) {
    if (_eventFilter == filter) {
      return Theme.of(context).filledButtonTheme.style!;
    }
    return AppTheme.getInactiveFilledButtonStyle(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 28, 20, 10),
      child: Row(
        children: [
          FilledButton(
            onPressed: () => _setEventFilter(EventFilter.thisWeek),
            style: _getEventFilterBtnStyle(EventFilter.thisWeek),
            child: const Text('This week'),
          ),
          const SizedBox(width: 5),
          FilledButton(
            onPressed: () => _setEventFilter(EventFilter.nextWeek),
            style: _getEventFilterBtnStyle(EventFilter.nextWeek),
            child: const Text('Next week'),
          ),
          const SizedBox(width: 5),
          FilledButton(
            onPressed: () => _setEventFilter(EventFilter.all),
            style: _getEventFilterBtnStyle(EventFilter.all),
            child: const Text('All'),
          ),
        ],
      ),
    );
  }
}
