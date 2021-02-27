import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class DurationSlider extends StatefulWidget {
  final String text;
  final double min;
  final double max;
  final Duration init;
  final double interval;
  final ValueChanged<Duration> onChanged;
  DurationSlider({
    Key key,
    this.text,
    this.min = 0,
    this.max = 60,
    this.init = const Duration(minutes: 25),
    this.interval = 5,
    this.onChanged
  }) : super(key: key);

  @override
  _DurationSliderState createState() => _DurationSliderState();
}

class _DurationSliderState extends State<DurationSlider> {
  TextEditingController _textEditingController;

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  void dispose() { 
    _textEditingController.dispose();
    super.dispose();
  }

  void init() {
    _textEditingController = TextEditingController(
      text: '${widget.init.inMinutes} min'
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Stack(
        children: [
          Positioned.fill(
            child: FlutterSlider(
              min: 0,
              max: widget.max,
              ignoreSteps: [
                FlutterSliderIgnoreSteps(from: -5, to: widget.min-1)
              ],
              step: FlutterSliderStep(step: widget.interval),
              values: [widget.init.inMinutes.toDouble()],
              onDragCompleted: (index, value, _) {
                widget.onChanged(Duration(minutes: value.toInt()));
              },
              onDragging: (index, value, _) {
                _textEditingController.text = '${value.toInt()}min';
                widget.onChanged(Duration(minutes: value.toInt()));
              },
              handler: FlutterSliderHandler(
                opacity: 0,
              ),
              handlerHeight: 48,
              handlerWidth: 48,
              handlerAnimation: FlutterSliderHandlerAnimation(scale: 1.0),
              tooltip: FlutterSliderTooltip(
                disabled: true,
              ),
              trackBar: FlutterSliderTrackBar(
                activeTrackBarHeight: 48,
                inactiveTrackBarHeight: 48,
                inactiveTrackBar: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Theme.of(context).colorScheme.primaryVariant
                ),
                activeTrackBar: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
          IgnorePointer(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Opacity(
                  opacity: 0.6,
                  child: Text(
                    widget.text?? 'Duration',
                    style: Theme.of(context).textTheme.subtitle2
                  ),
                ),
              ),
            ),
          ),
          IgnorePointer(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Container(
                  width: 56,
                  child: Opacity(
                    opacity: 0.6,
                    child: TextField(
                      controller: _textEditingController,
                      readOnly: true,
                      enabled: false,
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.subtitle2
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(covariant DurationSlider oldWidget) {
    setState(() {
      init();
    });
    super.didUpdateWidget(oldWidget);
  }
}