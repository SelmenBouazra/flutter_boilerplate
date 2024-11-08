---

# Flutter Boilerplate

This Flutter boilerplate provides a solid foundation for mobile app development, incorporating essential configurations and commonly-used packages. It enables quick project setup with built-in support for state management, API handling, localization, and other key features.

## Overview

- **Name**: flutter_boilerplate
- **Version**: 1.0.0
- **Description**: A starting template for new Flutter projects, featuring a well-structured project architecture, pre-configured packages, and customizable theming.

## Key Dependencies

- **UI and Utilities**:
    - `cupertino_icons`: For iOS-styled icons.
    - `flutter_svg`: For SVG asset support.
    - `flutter_screenutil`: For responsive screen design.
    - `flutter_native_splash`: Automatically generates splash screens for Android and iOS.
    - `flutter_localizations` and `intl`: For localization and internationalization.

- **State Management and Functional Utilities**:
    - `flutter_bloc`: For managing application state.
    - `dartz`: Provides functional programming utilities like `Either` and `Option`.
    - `equatable`: Simplifies value comparisons, useful in Bloc.

- **Service Management and Caching**:
    - `get_it`: A service locator for dependency injection.
    - `shared_preferences`: For local storage and caching.

- **Networking and API Integration**:
    - `dio`: A powerful HTTP client for making API requests.
    - `internet_connection_checker`: For checking network connectivity.
    - `talker_dio_logger`: For logging HTTP requests, helping in debugging API calls.

- **Image and Assets**:
    - `cached_network_image`: Efficiently handles image caching for improved performance.

- **Navigation**:
    - `auto_route`: Simplifies navigation with auto-generated routing code.

- **Code Generation and Build**:
    - `build_runner`: Runs code generation for various dependencies.
    - `json_serializable`: Automates JSON serialization, simplifying data model creation.
    - `auto_route_generator`: Generates route definitions, working with `auto_route`.

- **Dev Tools**:
    - `flutter_launcher_icons`: Helps generate custom app launcher icons.
    - `flutter_test`: For widget and unit testing.
    - `flutter_lints`: Ensures adherence to best practices.

## Project Setup

1. **Clone the repository**:
   ```bash
   git clone <repo-url>
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Generate necessary files**:
   ```bash
   flutter pub run build_runner build
   ```

4. **Run the app**:
   ```bash
   flutter run
   ```

## Folder Structure

- **lib/**: Contains main app code.
    - **core/**: Core utilities, themes, and configurations.
    - **data/**: Manages API services and local storage.
    - **features/**: Organized by feature modules.
    - **ui/**: Screens, widgets, and shared components.
    - **routes/**: Navigation logic.

## Assets and Fonts

- **Fonts**: Includes Poppins font family with various weights.
- **Images and Icons**: Organized in `assets/images` and `assets/icons`.

---
