library;

import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';
import 'app.dart';
import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  runApp(Document(
    title: 'Djordje Saric | Portfolio',
    meta: {
      'description': 'Portfolio of Djordje Saric, Mobile Developer.',
      'keywords': 'Flutter, Jaspr, Mobile Developer, Android, iOS, Dart',
      'author': 'Djordje Saric',
      'og:title': 'Djordje Saric | Portfolio',
      'og:description': 'Mobile Developer Portfolio',
      'og:type': 'website',
    },
    head: [
      link(href: 'styles.css', rel: 'stylesheet'),
      link(href: 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css', rel: 'stylesheet'),
      link(
          href: 'https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Open+Sans+Condensed:wght@700&display=swap',
          rel: 'stylesheet'),
    ],
    body: App(),
  ));
}
