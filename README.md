![splash-view](https://user-images.githubusercontent.com/82075108/186701730-074e00dc-b76d-4660-b4e9-109f9ac84301.svg)

[![chouhan-rahul](https://user-images.githubusercontent.com/82075108/182797956-c3db4825-97a8-462a-a89a-39772876bbd1.svg)](https://github.com/chouhan-rahul)
_[![buymeacoffee](https://user-images.githubusercontent.com/82075108/182797941-5ad09afd-7c74-4085-8130-819402cf7eaa.svg)](https://www.buymeacoffee.com/rahulchouhan)_
_[![ko-fi](https://user-images.githubusercontent.com/82075108/182797959-bd835cdb-7223-4b16-bf1e-284466d0658f.svg)](https://ko-fi.com/rahulchouhan)_
_[![paypal](https://user-images.githubusercontent.com/82075108/182797963-09475375-9a0a-4342-8e9d-08037d4ba343.svg)](https://paypal.me/rahulvchouhan)_

### Become a sponsor

[![sponsor](https://user-images.githubusercontent.com/82075108/182797969-11208ddc-b84c-4618-8534-18388d24ac18.svg)](https://github.com/sponsors/chouhan-rahul)

# Splash View

A splash view is a short introduction to an application shown when it is launched. In the splash view, basic introductory information, such as the company logo, content, etc. is displayed at the moment the application load.

![google](https://user-images.githubusercontent.com/82075108/187933408-e43cc9b9-ac8b-4739-8964-361aebf4f951.gif)
_![apple](https://user-images.githubusercontent.com/82075108/188062044-c8adec81-7ced-40db-80f7-bc29acd9fc62.gif)_

Here is an example of how to implement SplashView in a Flutter application. `Recommended:` Use splash view inside MaterialApp().

```dart
void main() {
  runApp(
    MaterialApp(
      home: SplashView(
        logo: FlutterLogo(),
        loading: CircularProgressIndicator(),
        done: Done(HomePage()),
      ),
    ),
  );
}
```

## Properties of SplashView

| Property                   | Type                                           | Description                                                 |
| -------------------------- | ---------------------------------------------- | ----------------------------------------------------------- |
| logo:                      | Widget                                         | Logo of the splash view.                                    |
| title:                     | Widget                                         | Title of the splash view.                                   |
| subtitle:                  | Widget                                         | Subtitle of the splash view.                                |
| loadingIndicator:          | Widget                                         | Loading indicator of the splash view.                       |
| done:                      | [Done](#redirecting-to-the-next-page)          | Redirect to the next page.                                  |
| duration:                  | Duration                                       | Duration of redirecting to the next page.                   |
| backgroundColor:           | Color                                          | Background color of the splash view.                        |
| backgroundImageDecoration: | [BackgroundImageDecoration](#background-image) | Background image of the splash view.                        |
| gradient:                  | Gradient                                       | Gradient background of the splash view.                     |
| bottomLoading:             | bool                                           | Show loading indicator on the bottom of the splash view.    |
| showStatusBar:             | bool                                           | Show and hide app status/navigation bar on the splash view. |

# Redirecting to the next page

SplashView has a property called `done`, here you can use `Done()` widget to redirect to the next page.

```dart
SplashView(
  done: Done(HomePage()),
)
```

## Redirecting to the next page with an animation effect

Done has two more properties which are used to redirect to the next page with an animation effect. `animationDuration` is used to set the duration of the animation and `curve` is used to set the animation curve.

```dart
SplashView(
  done: Done(
    HomePage(),
    animationDuration: Duration(seconds: 2),
    curve: Curves.easeInOut,
  ),
)
```

## Properties of Done

| Property           | Type     | Description                                     |
| ------------------ | -------- | ----------------------------------------------- |
| animationDuration: | Duration | The duration the transition going forwards.     |
| curve:             | Curve    | A collection of common animation easing curves. |

# Background

There are three ways to set the background of the splash view.

## Background Color
Background color can be set by `backgroundColor` property.

![microsoft](https://user-images.githubusercontent.com/82075108/187933417-1f362d5e-121d-4e80-b234-8bb2098872b2.gif)

```dart
SplashView(
  backgroundColor: Colors.red,
)
```

## Gradient Color

Gradient color can be set by `gradient` property.

![amazon](https://user-images.githubusercontent.com/82075108/187941122-b964ed0e-2e23-42f7-8169-b5e3ef36fe5f.gif)

```dart
SplashView(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[Colors.green, Colors.blue]),
  ),
)
```

## Background Image

Background image can be set by `backgroundImageDecoration` property.

![gdev](https://user-images.githubusercontent.com/82075108/188062062-12f70931-d7d0-41ba-a535-19b5d77556e7.gif)

```dart
SplashView(
  backgroundImageDecoration: BackgroundImageDecoration(
    image: AssetImage('images/larry-page.jpg'),
  ),
)
```

## Properties of BackgroundImageDecoration

| Property     | Type          | Description                                                                |
| ------------ | ------------- | -------------------------------------------------------------------------- |
| image:       | ImageProvider | Typically this will be an AssetImage or a NetworkImage                     |
| fit:         | BoxFit        | Fill the target box by distorting the source's aspect ratio.               |
| colorFilter: | ColorFilter   | A color filter is a function that takes two colors, and outputs one color. |
| opacity:     | double        | Used to set the filterQuality of the image.                                |

# Change the position of loading indicator

By default `bottomLoading` is false. You can change the position of loading indicator to the bottom by setting `bottomLoading` to true.

```dart
SplashView(
  bottomLoading: true,
)
```

# Hide/Show status bar and navigation bar

By default `showStatusBar` is false. You can show status bar and navigation bar by setting `showStatusBar` to true.

```dart
SplashView(
  showStatusBar: true,
)
```

# Report bugs or issues

You are welcome to open a _[ticket](https://github.com/chouhan-rahul/splash_view/issues)_ on github if any problems arise. New ideas are always welcome.

# Copyright and License

> Copyright © 2022 **[Rahul Chouhan](https://rahulchouhan.me)**. Licensed under the _[MIT LICENSE](https://github.com/chouhan-rahul/splash_view/blob/main/LICENSE)_.
