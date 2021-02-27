import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:Dayly/app/router.gr.dart';
import 'package:Dayly/app/core/icons.dart';
import 'package:Dayly/app/core/bloc/schedule/focus/focus_bloc.dart';
import 'package:Dayly/app/core/bloc/onboarding/onboarding_bloc.dart';
import 'package:Dayly/domain/schedule/timebox.dart';

import 'focus_card.dart';

class FocusWidget extends StatelessWidget {
  const FocusWidget({Key key}) : super(key: key);


  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FocusBloc, FocusState>(
      builder: (context, state) => state.maybeMap(
        isEvent: (state) {
          return FocusCard(eventOrTimebox: left(state.event),);
        },
        isTimeBox: (state) {
          return Slidable(
            actionPane: SlidableDrawerActionPane(),
            child: Dismissible(
              key: ValueKey(state.timebox),
              direction: DismissDirection.up,
              onDismissed: (direction) {
                context
                  .read<FocusBloc>()
                  .add(FocusEvent.unfocus());
              },
              child: Builder(
                builder: (context) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    if (state.timebox.end != null &&
                      state.timebox.end.isBefore(DateTime.now())) {
                        Slidable.of(context)
                          ?.open(actionType: SlideActionType.secondary);
                      }
                    context.read<OnboardingBloc>().state.maybeMap(
                      focusTask: (_) {
                        context
                          .read<OnboardingBloc>()
                          .add(OnboardingEvent.focusedTask());
                      },
                      orElse: () {}
                    );
                    context.read<OnboardingBloc>().listen((onboarding) { 
                      onboarding.maybeMap(
                        checkTask: (_) {
                          Slidable.of(context)
                            ?.open(actionType: SlideActionType.secondary);
                        },
                        done: (_) {
                          if (state.timebox.end != null &&
                            state.timebox.end.isBefore(DateTime.now())) {
                              Slidable.of(context)
                                ?.open(actionType: SlideActionType.secondary);
                            }
                        },
                        orElse: () {}
                      );
                    });
                  });
                  return FocusCard(eventOrTimebox: right(state.timebox));
                }
              )
            ),
            secondaryActions: <Widget>[
              SlideAction(
                child: Card(
                  elevation: 4,
                  color: Theme.of(context).colorScheme.surface,
                  child: Center(child: Icon(DaylyIcons.done))
                ),
                onTap: () async {
                  Future.delayed(Duration(milliseconds: 500), () {
                    context
                      .read<FocusBloc>()
                      .add(FocusEvent.done());
                    context.read<OnboardingBloc>().state.maybeMap(
                      checkTask: (_) {
                        context
                          .read<OnboardingBloc>()
                          .add(OnboardingEvent.taskDone());
                      },
                      orElse: () {}
                    );
                  });
                },
                closeOnTap: true,
              )
            ],
          );
        },
        orElse: () => _buildPlaceholder(context)
      )
    );
  }

  Widget _buildPlaceholder(context) {
    return GestureDetector(
      onTap: () {
        ExtendedNavigator.of(context).push(Routes.schedulingPage);
      },
      child: Hero(
        tag: 'schedulingHero',
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          color: Theme.of(context).colorScheme.primaryVariant,
          child: Row(
            children: [
              const Padding(
                padding: const EdgeInsets.all(8),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: DaylyIcon()
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      'Tap to schedule',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
