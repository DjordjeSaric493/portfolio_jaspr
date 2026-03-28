import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';
import '../data/portfolio_data.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      div([
        img(src: 'images/DjordjeProfile.png', classes: 'profile-img'),
        div([
          h2([text('Hello, I am Djordje Saric.')], attributes: {'style': 'text-align: center; margin-bottom: 15px;'}),
          p([text(introTextHtml.replaceAll("<br>", "\n"))],
              attributes: {'style': 'line-height: 1.6; font-weight: 500; white-space: pre-line;'}),
        ]),
        const HobbiesWidget(),
      ], classes: 'card')
    ], classes: 'page-container');
  }
}

class HobbiesWidget extends StatelessComponent {
  const HobbiesWidget({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      p([
        b([text('My hobbies are:')])
      ], attributes: {
        'style': 'margin-bottom: 15px;'
      }),
      div([
        _hobbyItem('fa-solid fa-guitar', 'Playing guitar'),
        _hobbyItem('fa-solid fa-dumbbell', 'Working out at the gym'),
        _hobbyItem('fa-solid fa-music', 'Going to concerts'),
        _hobbyItem('fa-solid fa-book', 'Reading books'),
        _hobbyItem('fa-solid fa-code', 'Coding'),
        _hobbyItem('fa-solid fa-plane', 'Travelling'),
      ], classes: 'hobbies-section'),
    ], attributes: {
      'style': 'margin-top: 25px;'
    });
  }

  Component _hobbyItem(String iconClass, String label) {
    return div([
      i([], classes: iconClass),
      span([text(label)])
    ], classes: 'hobby-item');
  }
}
