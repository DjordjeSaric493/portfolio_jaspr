import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/device_frame.dart';
import 'components/sidebar_widgets.dart';
import 'pages/launcher.dart';
import 'pages/home.dart';
import 'pages/skills.dart';
import 'pages/education.dart';
import 'pages/experience.dart';
import 'pages/competitions.dart';
import 'pages/email.dart';
import 'pages/pong.dart';
import 'data/portfolio_data.dart';

@client
class App extends StatefulComponent {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int selectedBgIndex = 2; // Default to Purple
  int selectedDeviceIndex = 0; // Default to Samsung

  @override
  Component build(BuildContext context) {
    final currentBg = fancyColorPalette[selectedBgIndex];
    final currentDevice = emuDevices[selectedDeviceIndex];

    return div([
      // Fixed Background
      div([], classes: 'bg-overlay', attributes: {'style': 'background: ${currentBg.gradient}'}),
      img(src: currentBg.svgPath, classes: 'svg-overlay'),

      div([
        // Desktop Layout (3 Columns)
        div([
          // Left Panel
          div([
            DeezerWidget(),
            ClockWidget(),
          ], classes: 'side-panel'),

          // Middle Panel
          div([
            Router(routes: [
              Route(
                  path: '/',
                  title: 'Home',
                  builder: (context, state) => DeviceFrame(
                        device: currentDevice,
                        child: Launcher(background: currentBg.gradient, device: currentDevice),
                      )),
              Route(
                  path: '/about',
                  title: 'About Me',
                  builder: (context, state) => DeviceFrame(
                        device: currentDevice,
                        child: const Home(),
                      )),
              Route(
                  path: '/skills',
                  title: 'Skills',
                  builder: (context, state) => DeviceFrame(
                        device: currentDevice,
                        child: const Skills(),
                      )),
              Route(
                  path: '/education',
                  title: 'Education',
                  builder: (context, state) => DeviceFrame(
                        device: currentDevice,
                        child: const Education(),
                      )),
              Route(
                  path: '/experience',
                  title: 'Experience',
                  builder: (context, state) => DeviceFrame(
                        device: currentDevice,
                        child: const Experience(),
                      )),
              Route(
                  path: '/competitions',
                  title: 'Competitions',
                  builder: (context, state) => DeviceFrame(
                        device: currentDevice,
                        child: const Competitions(),
                      )),
              Route(
                  path: '/email',
                  title: 'Contact',
                  builder: (context, state) => DeviceFrame(
                        device: currentDevice,
                        child: const EmailMe(),
                      )),
              Route(
                  path: '/pong',
                  title: 'Pong',
                  builder: (context, state) => DeviceFrame(
                        device: currentDevice,
                        child: const PongInfo(),
                      )),
            ]),
          ], classes: 'center-panel'),

          // Right Panel
          div([
            ColorPickerWidget(
              selectedIndex: selectedBgIndex,
              onSelected: (index) => setState(() => selectedBgIndex = index),
            ),
            const MrezaWidget(),
          ], classes: 'side-panel'),
        ], classes: 'desktop-layout'),

        // Bottom Device Switcher
        div([
          _buildSwitcherBtn(0, 'fa-brands fa-android'),
          _buildSwitcherBtn(1, 'fa-brands fa-apple'),
          _buildSwitcherBtn(2, 'fa-brands fa-linux'),
        ], classes: 'bottom-dock')
      ], classes: 'app-container'),
    ]);
  }

  Component _buildSwitcherBtn(int index, String iconClass) {
    return div([i([], classes: iconClass)],
        classes: 'switcher-btn ${index == selectedDeviceIndex ? "active" : ""}',
        events: {'click': (e) => setState(() => selectedDeviceIndex = index)});
  }
}
