import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';
import '../data/portfolio_data.dart';

class Experience extends StatelessComponent {
  const Experience({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      div([
        i([],
            classes: 'fa-regular fa-id-badge',
            attributes: {'style': 'font-size: 3rem; color: #FF5252; display: block; margin: 0 auto 20px;'}),
        for (final exp in experienceData) _ExperienceItem(exp: exp),
      ], classes: 'page-content')
    ], classes: 'page-container');
  }
}

class _ExperienceItem extends StatefulComponent {
  final ExperienceModel exp;
  const _ExperienceItem({required this.exp});

  @override
  State<_ExperienceItem> createState() => _ExperienceItemState();
}

class _ExperienceItemState extends State<_ExperienceItem> {
  bool isExpanded = false;

  @override
  Component build(BuildContext context) {
    return div([
      div(
          [
            div([], classes: 'item-accent-line', attributes: {'style': 'background-color: ${component.exp.colorHex}'}),
            div([
              h3([text(component.exp.title)], classes: 'item-title'),
              p([text('${component.exp.company}')], classes: 'item-subtitle'),
              p([text('${component.exp.startDate} - ${component.exp.endDate} | ${component.exp.location}')],
                  classes: 'item-details'),
            ], classes: 'item-header-content'),
            i([],
                classes: 'fa-solid ${isExpanded ? "fa-chevron-up" : "fa-chevron-down"} expand-icon',
                events: {'click': (e) => setState(() => isExpanded = !isExpanded)})
          ],
          classes: 'item-header',
          events: {'click': (e) => setState(() => isExpanded = !isExpanded)}),
      if (isExpanded)
        div([
          ul([
            for (final point in component.exp.bulletPointsHtml)
              li([
                div([
                  span([], classes: 'bullet'),
                  span([raw(point)]),
                ], classes: 'bullet-point')
              ])
          ], classes: 'item-bullet-list'),
          if (component.exp.link != null)
            a(
                [
                  i([], classes: 'fa-solid fa-arrow-up-right-from-square', attributes: {'style': 'margin-right: 6px;'}),
                  text('View Project'),
                ],
                href: component.exp.link!,
                attributes: {
                  'target': '_blank',
                  'style':
                      'display: inline-flex; align-items: center; margin-top: 10px; padding: 6px 14px; border-radius: 20px; background-color: ${component.exp.colorHex}22; color: ${component.exp.colorHex}; border: 1px solid ${component.exp.colorHex}; font-size: 0.82rem; font-weight: 600; text-decoration: none;'
                }),
        ], classes: 'item-body')
    ], classes: 'expansion-card');
  }
}
