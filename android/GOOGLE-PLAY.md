# Rotacje w siatkówce – wersja do Google Play

Aplikacja na Androida to tzw. **TWA** (Trusted Web Activity): mała paczka, która otwiera stronę
https://wojtasem.github.io/rotacje-siatkowka/ na pełnym ekranie, bez paska adresu.
Zmiany na stronie trafiają do użytkowników od razu, bez wysyłania nowej wersji do sklepu.
Nową paczkę trzeba zbudować tylko przy zmianie ikony, nazwy lub kolorów.

- Pakiet: `pl.marynowski.rotacje` (nie da się go zmienić po publikacji)
- Projekt wygenerowany przez Bubblewrap (`twa-manifest.json`), budowany Gradle z JDK z Android Studio
- Materiały do sklepu: folder `sklep/`

## Krok 1. Klucz przesyłania (raz)

W PowerShell w tym folderze:

    .\1-utworz-klucz.ps1

Wpisz hasło (dwa razy, zapamiętaj je!). Skrypt wypisze odcisk `SHA256: AB:CD:...`.
**Zrób kopię pliku `upload.keystore` poza komputerem** (pendrive, chmura). Plik nie trafia na GitHuba.

## Krok 2. Powiązanie strony z aplikacją

Odcisk SHA-256 trafia do pliku https://wojtasem.github.io/.well-known/assetlinks.json
(repozytorium `wojtasem.github.io`). Bez tego aplikacja pokazuje u góry pasek z adresem strony.
Później dopisujemy tam też drugi odcisk – klucza podpisu Google Play (krok 5).

## Krok 3. Paczka do wysłania

    .\2-zbuduj-paczke.ps1

Powstaje `app-release.aab` (podpisana Twoim kluczem).

## Krok 4. Konto i aplikacja w Play Console

1. https://play.google.com/console – załóż konto **osobiste** (25 USD, weryfikacja dowodem i telefonem).
2. „Utwórz aplikację”: nazwa *Rotacje w siatkówce*, język polski, aplikacja, bezpłatna.
3. Uzupełnij „Skonfiguruj aplikację” (odpowiedzi poniżej) i „Wpis w sklepie” (teksty i grafiki poniżej).
4. Testy → **Test zamknięty** → utwórz ścieżkę, dodaj listę testerów (adresy Gmail), wyślij `app-release.aab`.

## Krok 5. Drugi odcisk do assetlinks.json

Po pierwszym wysłaniu paczki: Play Console → Testowanie i publikowanie → Konfiguracja → **Integralność aplikacji**
→ „Certyfikat klucza podpisywania aplikacji” → skopiuj SHA-256 i dopisz go do `assetlinks.json`
(Google podpisuje paczki dla użytkowników własnym kluczem).

## Krok 6. Test zamknięty i publikacja

Nowe konta osobiste: **co najmniej 12 testerów musi mieć aplikację zainstalowaną przez 14 dni bez przerwy**.
Testerzy dołączają przez link z Play Console (muszą być na liście) i instalują aplikację ze sklepu.
Po 14 dniach: Panel → „Wnioskuj o dostęp do wersji produkcyjnej” (kilka pytań o test), potem wydanie produkcyjne.

## Nowa wersja paczki

W `twa-manifest.json` **i** `app/build.gradle` zwiększ `appVersionCode`/`versionCode` o 1 i ustaw `appVersionName`/`versionName`,
potem `.\2-zbuduj-paczke.ps1` i wyślij nowy `app-release.aab`.

---

## Wpis w sklepie

**Nazwa (≤ 30):** Rotacje w siatkówce

**Krótki opis (≤ 80):**
Interaktywne boisko do nauki rotacji i sprawdzania błędów ustawienia (FIVB).

**Pełny opis:**

Rotacje w siatkówce to interaktywne boisko dla trenerów, zawodników i sędziów.
Przeciągnij zawodnika palcem, a aplikacja od razu pokaże, czy w chwili zagrywki zespół stoi prawidłowo
względem sąsiadów, czy to już błąd ustawienia.

Co potrafi:
• wszystkie 6 ustawień systemu 5-1 (rozgrywający, dwóch przyjmujących, dwóch środkowych, atakujący i libero),
• przyjęcie zagrywki i własna zagrywka – osobne ustawienia dla każdej sytuacji,
• sprawdzanie zgodnie z przepisem 7.4 FIVB 2025–2028: kto musi stać bliżej siatki, a kto bliżej lewej lub prawej linii,
• lista zależności między zawodnikami z odległościami w metrach,
• wzorcowe ustawienia do nauki i „Zagraj piłkę” – drogi zawodników na pozycje w grze,
• imiona zawodników na boisku,
• zapis i wczytywanie ustawień z pliku oraz eksport do PDF,
• widoki: minimalny, domyślny i maksymalny,
• działa bez internetu, bez reklam i bez zakładania konta.

Aplikacja nie zbiera żadnych danych – wszystko zostaje na Twoim telefonie.
Autor: Wojciech Marynowski.

**Grafiki (folder `sklep/`):**
- Ikona 512×512: `ikona-512.png`
- Grafika promocyjna 1024×500: `grafika-1024x500.png`
- Zrzuty z telefonu 1080×2160: `1-przyjecie.png`, `2-blad.png`, `3-ustawienie4.png`, `4-ustawienia.png`

**Kategoria:** Sport · **Tagi:** siatkówka, trening · **E-mail kontaktowy:** Twój adres (wymagany, widoczny w sklepie)

## Odpowiedzi w „Skonfiguruj aplikację”

| Pytanie | Odpowiedź |
|---|---|
| Polityka prywatności | https://wojtasem.github.io/rotacje-siatkowka/polityka-prywatnosci.html |
| Dostęp do aplikacji | Wszystkie funkcje dostępne bez ograniczeń (bez logowania) |
| Reklamy | Nie, aplikacja nie zawiera reklam |
| Klasyfikacja treści | Kategoria „Narzędzia / inne”, na wszystkie pytania „Nie” → PEGI 3 |
| Grupa docelowa | 13–15, 16–17, 18+ (wybór grup poniżej 13 lat nakłada dodatkowe wymogi programu „Rodzina”) |
| Bezpieczeństwo danych | Aplikacja nie zbiera ani nie udostępnia danych użytkowników |
| Aplikacja rządowa / finansowa / zdrowotna | Nie |
| Aplikacja informacyjna (news) | Nie |
