import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';
import '../data/portfolio_data.dart';

class Skills extends StatelessComponent {
  const Skills({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      div([
        h2([text('Technical Skills')], attributes: {'style': 'margin-bottom: 20px; text-align: center;'}),
        div([
          for (final skill in skillsData) _SkillIcon(skill: skill),
        ], classes: 'skills-grid'),
        h2([text('Languages')], attributes: {'style': 'margin: 30px 0 20px; text-align: center;'}),
        div([
          for (final lang in languagesData) _SkillIcon(skill: lang),
        ], classes: 'skills-grid'),
      ], classes: 'page-content')
    ], classes: 'page-container');
  }
}

class _SkillIcon extends StatelessComponent {
  final SkillsModel skill;
  const _SkillIcon({required this.skill});

  @override
  Component build(BuildContext context) {
    return div([
      div(
          [
            if (skill.imagePath != null)
              img(src: skill.imagePath!, attributes: {'style': 'width: 24px; height: 24px; object-fit: contain;'})
            else
              i([], classes: 'fa-fw ${skill.iconClass}')
          ],
          classes: 'skill-badge-icon',
          attributes: {'style': 'background-color: ${skill.colorHex}22; color: ${skill.colorHex};'}),
      span([text(skill.skillName)], classes: 'skill-badge-name')
    ], classes: 'skill-badge');
  }
}
