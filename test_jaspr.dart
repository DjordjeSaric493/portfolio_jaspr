import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

class TestComp extends StatelessComponent {
  const TestComp({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        [
          text('Hello'),
          a([text('Link')], href: 'https://example.com', target: Target.blank),
          p([text('Paragraph')], classes: 'para'),
          i([], classes: 'fa fa-user'),
          section([
            h1([text('Title')]),
            img(src: 'image.png', alt: 'img'),
            br(),
          ], classes: 'section')
        ],
        classes: 'test-class',
        attributes: {'style': 'color: red;'});
  }
}
