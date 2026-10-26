# Джерела / Sources

Це зображення застосунків CpPrice11 для публічно доступного лаунчера Pullora. Іконки взято з офіційних репозиторіїв програм і підготовлено як PNG 256×256 без зміни оформлення. Для Recycle Desk також додано п’ять справжніх скриншотів з демонстраційними файлами.

| Програма | Оригінал | Права |
| --- | --- | --- |
| Fandom Translator | [assets/icon.ico](https://github.com/CpPrice11/fandom-translator/blob/main/assets/icon.ico) | CpPrice11; окрема відкрита ліцензія в репозиторії не зазначена. Додано власником для використання в Pullora. |
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
