![splash_view](https://user-images.githubusercontent.com/82075108/166908695-43b3459f-8e15-43e5-b5bf-6f469b7653f6.png)

[![rahul chouhan](https://user-images.githubusercontent.com/82075108/167239496-497f3135-a6b1-4a4c-985b-939e1537a5f9.png)](https://www.github.com/imRahulChouhan) _[![buy-me-a-coffee](https://user-images.githubusercontent.com/82075108/166093500-a61b8749-85d1-4206-a916-e534546c538b.svg)](https://buymeacoffee.com/rahulchouhan)_ _[![paypal](https://user-images.githubusercontent.com/82075108/166870820-8d619e80-3a3b-4bef-a3a8-6ee282f74da5.png)](https://paypal.me/imRahulChouhan)_
# Splash View

A splash view is a short introduction to an application shown when it is launched. In the splash view, basic introductory information, such as the company logo, content, etc. is displayed at the moment the application load.

# Sample screenshots are shown below

![flutter_splash_view](https://user-images.githubusercontent.com/82075108/167117248-b74cab18-e752-47ac-98d3-1f72c104de34.gif)
*![dart_splash_view](https://user-images.githubusercontent.com/82075108/167117279-8b0216ad-39c3-42c2-8973-add14a0b5b6d.gif)*
*![apple_splash_view](https://user-images.githubusercontent.com/82075108/167117323-2d74d3a7-95b5-41b1-a4fe-5e1be98d53fe.gif)*
*![google_splash_view](https://user-images.githubusercontent.com/82075108/167117441-bd5ba7df-0752-41c4-94a9-d7c2deda6c55.gif)*

# Getting Started

Below is an example of how to implement SplashView in a Flutter application. `Recommended:` Use splash view inside MaterialApp().

```dart
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(
        image: FlutterLogo(size: 80),
        title: "Splash View",
        home: Home(),
      ),
    ),
  );
}
```
## Hide/Show loading indicator

By default `showLoading` is true.

```dart
SplashView(
  image: FlutterLogo(size: 80),
  title: "Splash View",
  showLoading: false,
  home: Home(),
),
```

## Change the position of loading indication

By default `bottomLoading` is false. It means it's shown in the center of the splash view.

```dart
SplashView(
  image: FlutterLogo(size: 80),
  title: "Splash View",
  bottomLoading: true,
  home: Home(),
),
```

# Properties

| Property                    | Type          | Description                                                                |
| --------------------------- | ------------- | -------------------------------------------------------------------------- |
| image:                      | Widget        | To display the logo/image of the splash view.                              |
| title:                      | String        | To display the application name.                                           |
| titleTextStyle:             | TextStyle     | To format and paint title text.                                            |
| home:                       | Widget        | Redirect to another splash view, when loading is completed.                |
| seconds:                    | int           | Redirected time (in seconds).                                              |
| loading:                    | Widget        | To set loading indicator of splash view.                                   |
| showLoading:                | bool          | To hide/show the loading widget.                                           |
| bottomLoading:              | bool          | To set the loading widget to the bottom.                                   |
| backgroundColor:            | Color         | To set background color of splash view.                                    |
| backgroundImage:            | ImageProvider | To set background image of splash view.                                    |
| backgroundImageFit:         | BoxFit        | Applies the sizing semantics of these values.                              |
| backgroundImageOpacity:     | double        | To set background image opacity.                                           |
| backgroundImageColorFilter: | ColorFilter   | A color filter is a function that takes two colors, and outputs one color. |


# Report bugs or issues

You are welcome to open a *[ticket](https://github.com/imRahulChouhan/splash_view/issues)* on github if any problems arise. New ideas are always welcome.

# Copyright and License

>Copyright © 2022 **[Rahul Chouhan](https://rahulchouhan.me)**. Licensed under the *[MIT LICENSE](https://github.com/imRahulChouhan/splash_view/blob/main/LICENSE)*.
