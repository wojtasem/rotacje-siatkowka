# Rotacje w siatkówce

Autor: **Wojciech Marynowski**

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
- Cofanie i ponawianie ruchu, zapis ustawień w przeglądarce, układ dopasowany do smartfonów.
- Zapis wszystkich ustawień do pliku JSON i wczytanie ich z pliku (np. przeniesienie
  z komputera na telefon albo przesłanie innemu trenerowi).
- Okno „Ustawienia” (przycisk ⚙ lub `U`): wybór elementów widocznych na ekranie głównym,
  opcje boiska, nazwa pliku i reset.

## Ustawienia

Okno „Ustawienia” (przycisk ⚙ w nagłówku lub klawisz `U`) ma kategorie:

| Kategoria | Co można ustawić |
|---|---|
| Nagłówek i stopka | opis pod tytułem, przycisk „Skróty klawiszowe”, stopka |
| Przyciski pod boiskiem | „Następne / Poprzednie przejście”, „Wzorcowe ustawienie / Ustaw w strefach”, „Cofnij / Ponów ruch”, „Zagraj piłkę”, „Resetuj wszystkie ustawienia”, przyciski zapisu i wczytania pliku |
| Panel obok boiska | werdykt i karta zawodnika (razem), lista zależności, podpowiedź nad listą |
| Boisko | libero, numery stref, drogi do pozycji w grze, legenda kolorów zawodników |
| Dodatkowe karty | karta „Zasady ustawienia” |
| Nazwa zapisywanego pliku | własna nazwa oraz osobno: dodaj datę (RRRR-MM-DD) i dodaj godzinę (GG-MM-SS); znaki niedozwolone w nazwach plików są zamieniane na `-` |

Gotowe warianty widoku:

- **Widok domyślny** – większość elementów widoczna, numery stref włączone, drogi do pozycji wyłączone.
- **Widok minimalny** – tylko boisko z werdyktem oraz „Wzorcowe ustawienie”, „Ustaw w strefach”
  i „Resetuj wszystkie ustawienia”; bez numerów stref i dróg do pozycji.
- **Pokaż wszystko** – wszystkie elementy, numery stref i drogi do pozycji.

Libero zostaje bez zmian we wszystkich wariantach. Boisko z werdyktem u góry jest widoczne zawsze,
a skróty klawiszowe działają także przy ukrytych przyciskach.

Wybory zapisują się w przeglądarce na danym urządzeniu.

## Plik z ustawieniami

Przycisk „Zapisz do pliku” (lub `Ctrl+S`) tworzy plik o nazwie ustawionej w Ustawieniach,
domyślnie `rotacje-ustawienia_RRRR-MM-DD_GG-MM-SS.json`:

```json
{
  "aplikacja": "Rotacje w siatkówce",
  "format": 1,
  "autor_aplikacji": "Wojciech Marynowski",
  "przepisy": "FIVB 2025–2028",
  "jednostki": "metry; x – odległość od lewej linii bocznej, y – odległość od siatki; klucze 1–6 to strefy",
  "opcje": { "libero": true, "numery_stref": true, "drogi_do_pozycji": false },
  "ustawienia": [
    {
      "rozgrywajacy_w_strefie": 1,
      "przyjecie": { "1": { "zawodnik": "R", "rola": "Rozgrywający", "x": 8.4, "y": 6.6 }, "...": "..." },
      "zagrywka":  { "...": "..." }
    }
  ]
}
```

„Wczytaj z pliku” (lub `Ctrl+O`) sprawdza plik i zastępuje nim wszystkie ustawienia.
Błędny plik jest odrzucany z opisem problemu, a obecne ustawienia zostają bez zmian.

„Zapisz PDF” (lub `P`) tworzy plik PDF do wydruku (nazwa jak wyżej, z rozszerzeniem `.pdf`):
3 strony A4, po 2 ustawienia na stronie, każde z boiskiem dla przyjęcia i dla naszej
zagrywki, oceną (prawidłowe / błąd z listą naruszeń) i współrzędnymi zawodników.
PDF powstaje w przeglądarce bez zewnętrznych bibliotek (strony zapisane jako obrazy,
dzięki czemu działają polskie znaki), więc działa też offline.

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
| `Ctrl+S`, `Ctrl+O` | zapisz ustawienia do pliku / wczytaj z pliku |
| `P` | zapisz zestawienie ustawień do PDF |
| `R` | resetuj wszystkie ustawienia (z potwierdzeniem) |
| `U` | okno Ustawienia |
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
- `sw.js` – działanie offline (pamięć podręczna `CACHE`)
- po zmianie ikon podbij `?v=` w `index.html`, `manifest.webmanifest` i `sw.js`

## Wydanie nowej wersji

1. W `index.html` podbij `APP_VERSION` i `APP_DATE` – numer widać w stopce aplikacji,
   w zapisanym pliku JSON i w nagłówku PDF.
2. W `sw.js` ustaw `CACHE` na `rotacje-v<numer po kropce>` (np. 1.15 → `rotacje-v15`),
   żeby telefony pobrały nową wersję do pamięci offline.

## Uproszczenie

Przepisy oceniają ustawienie po stopach zawodnika. Aplikacja liczy pozycję od środka znacznika.
