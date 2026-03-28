import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';
import '../data/portfolio_data.dart';

class Competitions extends StatelessComponent {
  const Competitions({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      div([
        i([],
            classes: 'fa-solid fa-trophy',
            attributes: {'style': 'font-size: 3rem; color: #FFD700; display: block; margin: 0 auto 20px;'}),
        for (final comp in competitionsData) _CompetitionItem(comp: comp),
      ], classes: 'page-content')
    ], classes: 'page-container');
  }
}

class _CompetitionItem extends StatefulComponent {
  final CompetitionModel comp;
  const _CompetitionItem({required this.comp});

  @override
  State<_CompetitionItem> createState() => _CompetitionItemState();
}

class _CompetitionItemState extends State<_CompetitionItem> {
  bool isExpanded = false;

  @override
  Component build(BuildContext context) {
    return div([
      div([
        div([],
            classes: 'item-accent-line', attributes: {'style': 'background-color: ${component.comp.colorHex}'}),
        div([
          h3([text(component.comp.title)], classes: 'item-title'),
          p([text('${component.comp.organization}')], classes: 'item-subtitle'),
          p([text('${component.comp.date} | ${component.comp.location}')], classes: 'item-details'),
        ], classes: 'item-header-content'),
        i([],
            classes: 'fa-solid ${isExpanded ? "fa-chevron-up" : "fa-chevron-down"} expand-icon',
            events: {'click': (e) => setState(() => isExpanded = !isExpanded)})
      ], classes: 'item-header', events: {'click': (e) => setState(() => isExpanded = !isExpanded)}),
      if (isExpanded)
        div([
          ul([
            for (final point in component.comp.bulletPointsHtml)
              li([
                div([
                  span([], classes: 'bullet'),
                  span([raw(point)]),
                ], classes: 'bullet-point')
              ])
          ], classes: 'item-bullet-list')
        ], classes: 'item-body')
    ], classes: 'expansion-card');
  }
}
