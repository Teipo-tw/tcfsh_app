/*import 'package:flutter/material.dart';

class PageCalendar extends StatefulWidget with TickerProviderStateMixin {
  Map<DateTime, List> _events;
  List _selectedEvents;
  AnimationController _animationController;
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();

    // Today
    final _selectedDay = DateTime.now();

    // Events
    _events = {
      _selectedDay.add(Duration(days: 1)): [
        'Sleep all day',
      ],
      _selectedDay.add(Duration(days: 2)): [
        'Play PS4 Game',
        'Exercising',
        'Coding',
        'Sleeping',
        'Watch a movie',
        'Take a walk',
        'Surf on the internet'
      ],
    };

    _selectedEvents = _events[_selectedDay] ?? [];
    _calendarController = CalendarController();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _animationController.forward();
  }*/