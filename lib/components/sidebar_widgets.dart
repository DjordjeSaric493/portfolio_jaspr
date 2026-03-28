import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';
import 'dart:async';
import '../data/portfolio_data.dart';

class ClockWidget extends StatefulComponent {
  const ClockWidget({super.key});

  @override
  State<ClockWidget> createState() => _ClockWidgetState();
}

class _ClockWidgetState extends State<ClockWidget> {
  Timer? _timer;
  String _timeString = "";

  @override
  void initState() {
    super.initState();
    _updateTime();
    if (context.binding.isClient) {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        setState(() => _updateTime());
      });
    }
  }

  void _updateTime() {
    final now = DateTime.now();
    _timeString =
        "${now.day}/${now.month}/${now.year} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}";
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Component build(BuildContext context) {
    return div([text(_timeString)], classes: 'clock-widget glass-panel');
  }
}

class DeezerWidget extends StatelessComponent {
  const DeezerWidget({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      iframe([],
          src: 'https://widget.deezer.com/widget/dark/playlist/12883344503',
          attributes: {'frameborder': '0', 'allowtransparency': 'true', 'allow': 'encrypted-media; clipboard-write'})
    ], classes: 'deezer-widget glass-panel');
  }
}

class ColorPickerWidget extends StatelessComponent {
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  const ColorPickerWidget({required this.selectedIndex, required this.onSelected, super.key});

  @override
  Component build(BuildContext context) {
    return div([
      div([
        for (var i = 0; i < fancyColorPalette.length; i++)
          div([],
              classes: 'color-circle ${i == selectedIndex ? "active" : ""}',
              attributes: {'style': 'background-color: ${fancyColorPalette[i].color}'},
              events: {'click': (e) => onSelected(i)})
      ], classes: 'color-picker-grid')
    ], classes: 'glass-panel');
  }
}

class MrezaWidget extends StatelessComponent {
  const MrezaWidget({super.key});

  @override
  Component build(BuildContext context) {
    return div(
        [
          a(
              [
                img(
                    src: 'images/mrezasol.svg',
                    attributes: {'style': 'max-width: 100%; height: auto; display: block; border-radius: 12px;'})
              ],
              href: 'https://mrezasolidarnosti.org/',
              target: Target.blank,
              attributes: {'style': 'display: block; width: 100%; text-decoration: none;'})
        ],
        classes: 'glass-panel',
        attributes: {
          'style': 'padding: 15px; text-align: center; display: flex; align-items: center; justify-content: center;'
        });
  }
}
