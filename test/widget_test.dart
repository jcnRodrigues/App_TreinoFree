import 'package:app_treinofree/app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('TreinoFree carrega com abas principais', (tester) async {
    await tester.pumpWidget(const TreinoFreeApp());
    await tester.pumpAndSettle();

    expect(find.text('TreinoFree'), findsOneWidget);
    expect(find.text('Mapa'), findsOneWidget);
    expect(find.text('Fundamentos'), findsOneWidget);
    expect(find.text('Prescrição'), findsOneWidget);
    expect(find.text('Benefícios'), findsOneWidget);
  });
}
