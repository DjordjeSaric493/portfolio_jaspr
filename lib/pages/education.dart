import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';
import '../data/portfolio_data.dart';

class Education extends StatelessComponent {
  const Education({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      div([
        i([],
            classes: 'fa-solid fa-graduation-cap',
            attributes: {'style': 'font-size: 3rem; color: #2196F3; display: block; margin: 0 auto 20px;'}),
        for (final edu in eduData) _EducationItem(edu: edu),
      ], classes: 'page-content')
    ], classes: 'page-container');
  }
}

class _EducationItem extends StatefulComponent {
  final EduModel edu;
  const _EducationItem({required this.edu});

  @override
  State<_EducationItem> createState() => _EducationItemState();
}

class _EducationItemState extends State<_EducationItem> {
  bool isExpanded = false;

  @override
  Component build(BuildContext context) {
    return div([
      div([
        div([],
            classes: 'item-accent-line', attributes: {'style': 'background-color: ${component.edu.colorHex}'}),
        div([
          h3([text(component.edu.title)], classes: 'item-title'),
          p([text('${component.edu.school}')], classes: 'item-subtitle'),
          p([text('${component.edu.startDate} - ${component.edu.endDate} | ${component.edu.location}')],
              classes: 'item-details'),
        ], classes: 'item-header-content'),
        i([],
            classes: 'fa-solid ${isExpanded ? "fa-chevron-up" : "fa-chevron-down"} expand-icon',
            events: {'click': (e) => setState(() => isExpanded = !isExpanded)})
      ], classes: 'item-header', events: {'click': (e) => setState(() => isExpanded = !isExpanded)}),
      if (isExpanded)
        div([
          ul([
            for (final point in component.edu.descriptionHtml)
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
