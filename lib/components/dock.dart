import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr_router/jaspr_router.dart';
import '../data/portfolio_data.dart';

class Dock extends StatelessComponent {
  const Dock({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      for (final app in appsData)
        if (app.route != null || app.link != null) app.link != null ? _buildExternalLink(app) : _buildInternalLink(app)
    ], classes: 'dock');
  }

  Component _buildExternalLink(AppModel app) {
    return a([
      i([], classes: 'fa-fw ${app.iconClass}'),
      span([text(app.title)], classes: 'tooltip')
    ], href: app.link!, target: Target.blank, classes: 'dock-icon text-accent');
  }

  Component _buildInternalLink(AppModel app) {
    return Link(
        to: app.route!,
        child: div([
          i([], classes: 'fa-fw ${app.iconClass}'),
          span([text(app.title)], classes: 'tooltip')
        ], classes: 'dock-icon text-accent'));
  }
}
