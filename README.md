# Voca Notes

Voca Notes is an open-source Flutter application designed to help users efficiently manage and expand their daily vocabulary. Our goal is to make language learning more accessible and enjoyable, help users effortlessly acquire new words and phrases daily.

## Project Overview

- **Name**: Voca Notes
- **Description**: An open-source app designed to enhance your daily vocabulary with ease and efficiency.
- **Version**: 1.0.0+1

## Environment

- **Dart SDK**: >=3.2.6 <4.0.0
- **Flutter SDK**: >=3.24.0

## Usage

To get started with the project, ensure you have the Flutter SDK installed and set up. Clone the repository and run the following commands:

```bash
flutter pub get
flutter run
```

## Generating Code

### Assets

To generate code for your assets, use the `flutter_gen_runner`:

```bash
flutter pub run build_runner build
```

### Localization

To generate localization files using `slang`, run:

```bash
flutter pub run slang_build_runner build
```

### Build Runner

The build runner is used to generate code for various parts of the project, such as:

- **Freezed**: For immutable classes.
- **Auto Route**: For navigation.
- **Injectable**: For dependency injection.

Run the following command to generate all necessary code:

```bash
flutter pub run build_runner build
```

If you make changes to files annotated with `@freezed`, `@AutoRoute`, or `@injectable`, you will need to rerun the build runner command to regenerate the code.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
