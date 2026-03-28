import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr_router/jaspr_router.dart';
import '../data/portfolio_data.dart';

class DeviceFrame extends StatelessComponent {
  final EmuDevice device;
  final Component child;

  const DeviceFrame({required this.device, required this.child, super.key});

  @override
  Component build(BuildContext context) {
    final currentPath = Router.of(context).matchList.uri.path;
    final isLauncher = currentPath == '/';

    // Map device names to CSS classes (e.g., 'samsung', 'iphone')
    final deviceClass = device.name.toLowerCase().split(' ').first;

    return div([
      div([
        div([
          // Status Bar Area
          div([
            span([text('12:00')], classes: 'status-time'),
            div([
              i([], classes: 'fa-solid fa-signal'),
              i([], classes: 'fa-solid fa-wifi'),
              i([], classes: 'fa-solid fa-battery-full'),
            ], classes: 'status-icons')
          ], classes: 'device-status-bar'),

          // Close Button (X) - Only for apps
          if (!isLauncher)
            Link(
              to: '/',
              child: div([i([], classes: 'fa-solid fa-xmark')], classes: 'device-close-btn'),
            ),

          div(
              [
                child,
              ],
              classes: 'device-content-scroll',
              attributes: {if (!isLauncher) 'style': 'background: var(--page-bg);'})
        ], classes: 'device-screen')
      ], classes: 'device-frame ${device.type} $deviceClass')
    ], classes: 'device-container');
  }
}
