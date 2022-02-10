# monterey-graphic
 Create differently colored versions of the Monterey Graphic desktop image in macOS Monterey

### Install Dependencies:

- [Xcode](https://developer.apple.com/xcode/)

- [Homebrew](https://brew.sh)

- [ImageMagick](https://imagemagick.org)

```bash
$ brew install imagemagick
```

- [wallpapper](https://github.com/mczachurski/wallpapper)

```bash
$ brew tap mczachurski/wallpapper
$ brew install wallpapper
```

### Usage:

```bash
$ ./monterey-graphic.sh [MODULATE] [COLORSPACE] [FILENAME]
```

The MODULATE and COLORSPACE options use the ImageMagick values documented here:

https://imagemagick.org/script/command-line-options.php#modulate


### Examples:

Shift hue to green and use HCL colorspace:

```bash
$ ./monterey-graphic.sh 100,100,50 HCL
```

Darken, shift hue to blue, use HSB colorspace, and specifiy filename:

```bash
$ ./monterey-graphic.sh 75,100,75 HSB desktop.heic
```
