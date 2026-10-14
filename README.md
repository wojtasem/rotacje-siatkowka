# Rotacje w siatkówce

Interaktywne boisko do nauki ustawień w siatkówce i sprawdzania błędu ustawienia
według [przepisów FIVB 2025–2028](https://www.fivb.com/wp-content/uploads/2025/01/FIVB-Volleyball_Rules2025_2028-EN-v05.pdf) (przepisy 7.4–7.5).

## Co potrafi

- 6 ustawień (według strefy rozgrywającego) z animowanym przejściem 1 → 6 → 5 → 4 → 3 → 2.
- Dwa momenty:
  - przyjęcie zagrywki – sprawdzana jest pełna kolejność ustawienia,
  - nasza zagrywka – od 2025 r. drużyna zagrywająca może stać dowolnie na swoim boisku,
    sprawdzane jest tylko boisko i strefa zagrywki.
- Stanie na równi z sąsiadem jest dozwolone (7.4.3).
- Każdego zawodnika można przeciągnąć palcem lub myszą. Aplikacja na bieżąco pokazuje:
  - czy ustawienie jest prawidłowe, czy to błąd ustawienia,
  - zależności między parami zawodników (przód–tył, lewo–prawo) z zapasem lub brakiem w metrach,
  - obszar, w którym wybrany zawodnik może stanąć bez błędu,
  - z kim zawodnik nie ma żadnej zależności.
- Wzorcowe ustawienia do przyjęcia w systemie 5-1, opcja libero, strzałki do pozycji w grze.
- Cofanie ruchu, zapis ustawień w przeglądarce, układ dopasowany do smartfonów.

## Skróty klawiszowe

Działają w całej aplikacji (lista w aplikacji pod klawiszem `?`).

| Skrót | Działanie |
|---|---|
| `]` / `PageDown`, `[` / `PageUp` | następne / poprzednie przejście |
| `Shift` + `1`…`6` | ustawienie z rozgrywającym w strefie 1…6 |
| `M` | przyjęcie ⇄ nasza zagrywka |
| `Spacja` | zagraj piłkę / wróć do ustawienia |
| `1`…`6` | zaznacz zawodnika w strefie |
| `Tab` / `Shift+Tab` | następny / poprzedni zawodnik (gdy aktywne jest boisko) |
| strzałki, `Shift`+strzałki, `Alt`+strzałki | przesuń o 10 cm / 50 cm / 1 cm |
| `Esc` | odznacz zawodnika |
| `Ctrl+Z`, `Ctrl+Y` (lub `Ctrl+Shift+Z`) | cofnij / ponów ruch |
| `W`, `S` | wzorcowe ustawienie / ustaw w strefach |
| `L`, `N`, `D` | libero / numery stref / drogi do pozycji w grze |
| `F` | pełny ekran |
| `?` / `H` | lista skrótów |

## Uruchomienie

Aplikacja działa pod adresem https://wojtasem.github.io/rotacje-siatkowka/

Na telefonie otwórz ten link i dodaj go do ekranu głównego (Android: menu Chrome →
„Dodaj do ekranu głównego”, iPhone: Safari → Udostępnij → „Do ekranu początkowego”).
Aplikacja dostanie własną ikonę i po pierwszym otwarciu działa także bez internetu.

Lokalnie wystarczy otworzyć `index.html` w przeglądarce (tryb offline działa tylko przez https).

## Pliki

- `index.html` – cała aplikacja
- `manifest.webmanifest`, `icons/` – nazwa i ikona po dodaniu do ekranu głównego:
  `icon-*.png` i `favicon-32.png` z przezroczystym tłem (komputer),
  `icon-maskable-*.png` i `apple-touch-icon.png` z grafitowym tłem (telefony)
- po zmianie ikon podbij `?v=` w `index.html`, `manifest.webmanifest` i `sw.js`
- `sw.js` – działanie offline; po zmianie listy plików lub ikon podbij w nim `CACHE`

## Uproszczenie

Przepisy oceniają ustawienie po stopach zawodnika. Aplikacja liczy pozycję od środka znacznika.
