import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr_router/jaspr_router.dart';
import '../data/portfolio_data.dart';

class Launcher extends StatelessComponent {
  final String background;
  final EmuDevice device;
  const Launcher({required this.background, required this.device, super.key});

  @override
  Component build(BuildContext context) {
    // Determine icon shape based on device
    final iconClass = device.name.contains('Samsung') ? 'sq-icon' : 'rd-icon';

    return div(
        [
          div([
            for (final app in appsData)
              div([
                _buildAppIcon(context, app, iconClass),
                span([text(app.title)], classes: 'launcher-icon-label')
              ], classes: 'launcher-item')
          ], classes: 'launcher-grid')
        ],
        classes: 'launcher-container',
        attributes: {'style': 'background: $background'});
  }

  Component _buildAppIcon(BuildContext context, AppModel app, String shapeClass) {
    final content = div([i([], classes: 'fa-fw ${app.iconClass}')],
        classes: 'launcher-icon $shapeClass', attributes: {'style': 'background-color: ${app.colorHex}'});

    if (app.link != null) {
      return a([content],
          href: app.link!, target: Target.blank, attributes: {'style': 'text-decoration: none; display: block;'});
    } else {
      return Link(to: app.route!, child: content);
    }
  }
}
