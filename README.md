# Android Hello World App

A simple Android "Hello World" application written in Kotlin.

## Features

- Simple Android app displaying "Hello World!" message
- Built with Kotlin and AndroidX
- Material Design components
- Adaptive launcher icon

## Requirements

- Android SDK (API 24 or higher)
- Java 17
- Gradle 8.0

## Building the App

### Build APK

```bash
./gradlew assembleDebug
```

The APK will be generated at: `app/build/outputs/apk/debug/app-debug.apk`

### Install on Device/Emulator

```bash
./gradlew installDebug
```

## CI/CD

This project uses GitHub Actions for automated builds:

- **Push to main**: Builds and creates a GitHub release with the APK
- **Pull requests**: Builds APK and attaches to the PR

The workflow automatically:
1. Detects the Android project structure
2. Builds the debug APK
3. Creates a GitHub release with the APK artifact

## Project Structure

```
.
├── app/
│   ├── src/
│   │   └── main/
│   │       ├── java/com/example/helloworld/
│   │       │   └── MainActivity.kt
│   │       ├── res/
│   │       │   ├── layout/
│   │       │   │   └── activity_main.xml
│   │       │   ├── values/
│   │       │   │   └── strings.xml
│   │       │   ├── drawable/
│   │       │   └── mipmap-*/
│   │       └── AndroidManifest.xml
│   └── build.gradle.kts
├── build.gradle.kts
├── settings.gradle.kts
└── gradle.properties
```

## License

This project is open source and available under the MIT License.
