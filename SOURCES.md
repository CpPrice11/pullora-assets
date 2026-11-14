# Джерела / Sources

Це зображення застосунків CpPrice11 для публічно доступного лаунчера Pullora. Іконки взято з офіційних репозиторіїв програм і підготовлено як PNG 256×256 без зміни оформлення. Для Recycle Desk також додано п’ять справжніх скриншотів з демонстраційними файлами.

| Програма | Оригінал | Права |
| --- | --- | --- |
| WikiRelay (раніше Fandom Translator) | `icon-v2.png`: кадр 256×256 з `assets/icon.ico` локальної збірки WikiRelay 1.30.27. `icon-v1.png`: [попередня іконка Fandom Translator](https://github.com/CpPrice11/fandom-translator/blob/main/assets/icon.ico). | CpPrice11; окрема відкрита ліцензія не зазначена. Додано власником для використання в Pullora. |
| MY SAM | [v0.1/assets/app-icon-steam-achievements-v2.png](https://github.com/CpPrice11/steam-achievement-manager/blob/main/v0.1/assets/app-icon-steam-achievements-v2.png) | Оформлення іконки: CpPrice11; [MIT](https://github.com/CpPrice11/steam-achievement-manager/blob/main/LICENSE). Знак Steam належить Valve й не передається за цією ліцензією. Текст MIT: `licenses/steam-achievement-manager.txt`. |
| Recycle Desk | [resources/icons/recycle-desk-v1.png](https://github.com/CpPrice11/recycle-desk/blob/main/resources/icons/recycle-desk-v1.png) | CpPrice11; [MIT](https://github.com/CpPrice11/recycle-desk/blob/main/LICENSE). Текст ліцензії: `licenses/recycle-desk.txt`. |

Позначення програм і їхні торговельні марки залишаються власністю відповідних правовласників. Іконки не надають прав на торговельні марки.

Іконка MY SAM `icon-v2.png` створена для Pullora з растрового файлу застосунку. Для знака Steam використано як референс іконку встановленого клієнта Steam та [офіційний SVG](https://store.steampowered.com/public/shared/images/header/logo_steam.svg); композицію кубка згенеровано й обрано для MY SAM. Попередню `icon-v1.png` збережено для наявних посилань.

## Recycle Desk 0.1.2

- `icon-v2.png`: та сама затверджена іконка, відцентрована на прозорому полотні 256×256; видимий силует уміщується в межі 224×224. Оригінал і ліцензія наведені в таблиці. Попередній `icon-v1.png` збережений для чинних посилань. Скрипт пакування: `scripts/prepare-recycle-desk-icon.ps1`.
- `main-dark-uk-v012.png`: головне вікно, українська мова, темна тема.
- `main-light-en-v012.png`: головне вікно, англійська мова, світла тема.
- `search-dark-uk-v012.png`: пошук за словом `shapes`, що залишає три з шести демонстраційних файлів.
- `tray-desktop-uk-v012.png`: справжній робочий стіл із вікном програми та її іконкою в розгорнутій області системного трея.
- `tray-detail-uk-v012.png`: крупний план тієї самої області трея, захоплений безпосередньо з екрана. Це не велика кнопка програми на панелі завдань.

Скриншоти знято 25 жовтня 2026 року з незміненого опублікованого [Recycle Desk v0.1.2](https://github.com/CpPrice11/recycle-desk/releases/tag/v0.1.2) на Windows Server 2022 у [GitHub Actions](https://github.com/CpPrice11/recycle-desk/actions/runs/40222049116). Це не знімки Windows 11. Контрольна сума EXE SHA-256: `59f65a95d10036dc211cb367cf5ecfadd8bb557cac0306eeb2de98f21f367f8f`.

Зображення показують справжні вікна програми, без домальовування інтерфейсу. Шість спеціально створених прикладів у `C:\Recycle Desk Demo` не містять особистих даних. Мініатюри геометричних зображень також належать до цих прикладів. Скриншоти Recycle Desk та демонстраційні зображення надаються власником за [MIT](licenses/recycle-desk.txt); системні елементи й торговельні марки Windows належать Microsoft.

Два кадри трея знято **26 жовтня 2026 року** на Windows Server 2022 у [GitHub Actions](https://github.com/CpPrice11/recycle-desk/actions/runs/40357201624), з тим самим опублікованим EXE v0.1.2 та контрольною сумою, наведеною вище. Кадри не містять домальованого інтерфейсу; крупний план показано більшим у README. Вигляд трея залежить від версії та налаштувань Windows.

## CreamAPI 0.1.8

Чотири PNG знято 09.11.2026 з [CreamAPI](https://github.com/CpPrice11/CreamAPI/releases/tag/v0.1.8), Windows x64, нативний WinUI 3, DPI 150%. Українське вікно — 1120×760 DIPs; English — мінімальні 880×600 DIPs. Інтерфейс не домальовувався; файли скопійовано без змін із перевірок зібраного portable ZIP.

- `library-dark-uk-v018.png`: українська бібліотека, дві синтетичні ігри зі спільним лаунчером.
- `launcher-history-dark-uk-v018.png`: часткове відновлення після зникнення тестової старої версії лаунчера; журнал збережено, доступне архівування.
- `module-removed-dark-uk-v018.png`: розпізнаний ручний модуль видалено; доступне скасування видалення.
- `library-dark-en-v018.png`: англійський інтерфейс при мінімальному розмірі вікна.

EXE SHA-256: `1fcc0d68aed18c8eb581b41814dc5fcafda83896b71abf7734162f2f0bdb8fee`. Використано лише власні тестові папки та профілі, без особистої Steam-бібліотеки, токенів чи шляхів до особистих файлів. Написи й обкладинки DLC відображаються самою програмою: метадані Steam Store та офіційний Steam CDN; права на ігрове оформлення належать Valve, Paradox Interactive та відповідним правовласникам. Нативні елементи Windows належать Microsoft. Додано власником для використання в Pullora; окремої спільної відкритої ліцензії на ці знімки не встановлено. Скриншоти не є доказом володіння DLC або сумісності всередині гри.

Окремий логотип не створювався. `icon: null` залишає штатну резервну іконку Pullora.
## DLC Dock 0.1.9 — перейменування та іконка, 09.11.2026

Застосунок [DLC Dock](https://github.com/CpPrice11/dlc-dock/releases/tag/v0.1.9) раніше мав назву CreamAPI. CreamAPI та CreamInstaller залишаються в описі як функціональні орієнтири; підтримуваний зовнішній модуль — SmokeAPI 4.1.3.

`media/cpprice11/dlc-dock/icon-v1.png` — оригінальна геометрична іконка, створена для цього проєкту: модуль зі знаком додавання над доком. [SVG та ICO](https://github.com/CpPrice11/dlc-dock/tree/main/resources), [відтворюваний генератор](https://github.com/CpPrice11/dlc-dock/blob/main/scripts/generate-icon.ps1). PNG 256×256, прозорі зовнішні кути; палітра Catppuccin Mocha: Base #1e1e2e, Mauve #cba6f7, Teal #94e2d5. Сторонні логотипи не використано; це не генерація GPT Image. Власник проєкту надав іконку для показу у Pullora; окремої спільної відкритої ліцензії на всі матеріали немає.

Чотири PNG `*-v019.png` знято зі справжнього фінального portable ZIP: Windows x64, WinUI 3, DPI 150%, українська 1120×760 DIPs і English 880×600 DIPs. Іконка та назва видимі у вікні. Стан: бібліотека з двома синтетичними іграми, часткове відновлення лаунчера, видалений модуль і English при мінімальному розмірі. Інтерфейс не домальовувався, зображення скопійовано без змін. EXE SHA-256: `11012a9d25ef1956ffe7ffb7f4b8ac3b37d1a47fa0e9fb68cb341440a5b470f1`.

Використано лише тестові папки й профілі. Реальні ігри не змінювались; скриншоти не доводять сумісності всередині гри. Обкладинки відображає сама програма з офіційного Steam CDN / метаданих Steam Store; права на них належать Valve, Paradox Interactive та відповідним правовласникам, нативні елементи Windows — Microsoft. Історичні файли CreamAPI 0.1.8 залишено для чинних посилань, активний ключ каталогу замінено на `cpprice11/dlc-dock` без дублювання програми.
