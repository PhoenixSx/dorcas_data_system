import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'services/supa.dart';
import 'state/providers.dart';
import 'features/family/list/family_list_screen.dart';
import 'features/lookups/lookups_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supa.init();
  runApp(const ProviderScope(child: App()));
}

// NOTE: Use ConsumerStatefulWidget so we get `ref` instead of using context.read(...)
class App extends ConsumerStatefulWidget {
  const App({super.key});
  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  int _tab = 0;

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final engine = ref.read(syncEngineProvider);
      await engine.warmLookupsNow(); // Pull all lookups (delta)
      await engine.runCycle(); // Push outbox + pull operational
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Offline First Case Mgmt',
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Offline First Case Mgmt')),
        body: IndexedStack(
          index: _tab,
          children: const [
            FamilyListScreen(),
            LookupsScreen(),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _tab,
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.family_restroom), label: 'Families'),
            NavigationDestination(icon: Icon(Icons.list_alt), label: 'Lookups'),
          ],
          onDestinationSelected: (i) => setState(() => _tab = i),
        ),
      ),
    );
  }
}
