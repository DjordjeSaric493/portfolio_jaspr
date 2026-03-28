import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';
import '../data/portfolio_data.dart';

class EmailMe extends StatelessComponent {
  const EmailMe({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      div(
          [
            i([],
                classes: 'fa-regular fa-paper-plane',
                attributes: {'style': 'font-size: 3rem; color: var(--primary-color); margin-bottom: 1.5rem;'}),
            h1([text('Get In Touch')],
                attributes: {'style': 'margin-bottom: 0.8rem; font-size: 1.5rem; font-weight: 700;'}),
            p([text('Feel free to reach out to me via email. I will try to get back to you as soon as possible!')],
                attributes: {'style': 'color: #333; margin-bottom: 2rem; font-size: 0.95rem; line-height: 1.5;'}),
            a([text(email)],
                href: 'mailto:$email',
                classes: 'pumpaj-btn', // Reuse btn styles for consistency
                attributes: {
                  'style':
                      'display: block; width: 100%; box-sizing: border-box; font-size: 0.75rem; padding: 10px 10px; background: var(--primary-color); color: white; text-decoration: none; border-radius: 8px; text-align: center;'
                })
          ],
          classes: 'card',
          attributes: {
            'style':
                'display: flex; flex-direction: column; align-items: center; text-align: center; padding: 30px 15px;'
          })
    ], classes: 'page-container');
  }
}
