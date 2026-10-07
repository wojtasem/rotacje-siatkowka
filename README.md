# Rotacje w siatkówce

Interaktywne boisko do nauki ustawień w siatkówce i sprawdzania błędu ustawienia (przepis 7.4 FIVB).

## Co potrafi

- 6 ustawień (według strefy rozgrywającego) z animowanym przejściem 1 → 6 → 5 → 4 → 3 → 2.
- Dwa momenty: przyjęcie zagrywki i nasza zagrywka (zagrywający jest zwolniony z zależności).
- Każdego zawodnika można przeciągnąć palcem lub myszą. Aplikacja na bieżąco pokazuje:
  - czy ustawienie jest prawidłowe, czy to błąd ustawienia,
  - zależności między parami zawodników (przód–tył, lewo–prawo) z zapasem lub brakiem w metrach,
  - obszar, w którym wybrany zawodnik może stanąć bez błędu,
  - z kim zawodnik nie ma żadnej zależności.
- Wzorcowe ustawienia do przyjęcia w systemie 5-1, opcja libero, strzałki do pozycji w grze.
- Cofanie ruchu, zapis ustawień w przeglądarce, układ dopasowany do smartfonów.

## Uruchomienie

Aplikacja działa pod adresem https://wojtasem.github.io/rotacje-siatkowka/

Na telefonie otwórz ten link i dodaj go do ekranu głównego (Android: menu Chrome →
„Dodaj do ekranu głównego”, iPhone: Safari → Udostępnij → „Do ekranu początkowego”).
Aplikacja dostanie własną ikonę i po pierwszym otwarciu działa także bez internetu.

Lokalnie wystarczy otworzyć `index.html` w przeglądarce (tryb offline działa tylko przez https).

## Pliki

- `index.html` – cała aplikacja
- `manifest.webmanifest`, `icons/` – nazwa i ikona po dodaniu do ekranu głównego
- `sw.js` – działanie offline; po zmianie listy plików lub ikon podbij w nim `CACHE`

## Uproszczenie

Przepisy oceniają ustawienie po stopach zawodnika. Aplikacja liczy pozycję od środka znacznika.
