# QR PDF Generator

Простое GUI-приложение на Python: принимает список строк или первый столбец Excel-файла и создаёт PDF с QR-кодом и подписью для каждой строки.

## Почему проект можно публиковать

- нет сетевых запросов и внешних API;
- нет секретов или production-конфигов в проверенных текущих файлах;
- входные данные выбираются локально пользователем;
- проект понятен как маленькая desktop utility для операционных задач.

Перед публикацией всё равно нужен full-history secret/data scan и, желательно, sample screenshot.

## Возможности

- ввод строк вручную;
- загрузка значений из первого столбца Excel;
- генерация PDF: один QR на страницу A6;
- автоматическое имя файла `Коды_коробов_YYYY-MM-DD_N.pdf`;
- сборка Windows EXE через PyInstaller.

## Запуск

```bash
pip install -r requirements.txt
python main.py
```

## Использование

1. Вставьте список строк по одной на строку или загрузите Excel.
2. Нажмите «Сгенерировать PDF».
3. Выберите папку сохранения.
4. Получите PDF с QR-кодами и подписями.

## Сборка EXE

```bash
pip install -r requirements.txt
python -m pip install pyinstaller
build_exe.bat
```

Готовый `QRGenerator.exe` появится в `dist/`.

## License recommendation

MIT после full-history scan.
