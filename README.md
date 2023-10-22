## Configure Environment
The Monkey C extension requires Visual Studio Code, the Oracle Java™ Runtime Environment 8 (version 1.8.0 or higher) and Connect IQ SDK version 4.0.6 or higher. </br>
From: https://developer.garmin.com/connect-iq/reference-guides/visual-studio-code-extension/

So you need Java JRE 8 and Garmin SDK. Both need to be in `PATH`

## Solutions
1.  How width and height work for `dc.drawText` and `Graphics.fitTextToArea`?
<details>
<summary></summary>

`dc.getWidth()` is `Graphics.DeviceContext.getWidth()`; get the width of the display region that is available to the app.
```csharp
var middlePointOfTextWidth = 5*dc.getWidth()/8;
var middlePointOfTextHeight = 5*dc.getHeight()/16;
var spaceAvailableForTextWidth = 3*dc.getWidth()/8;
var spaceAvailableForTextHeight = 3*dc.getWidth()/8;
var truncate = true;

dc.drawText(
    middlePointOfTextWidth, 
    middlePointOfTextHeight, 
    font,
    Graphics.fitTextToArea(
        your_text, 
        font, 
        spaceAvailableForTextWidth,
        spaceAvailableForTextHeight,
        truncate),
    Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER);
```
Code above means that text will start at width ${7x \over 16}$ <br>
$x=$ `dc.getWidth()`
$$ {5x \over 8 }- ({3x \over 8} * {1 \over 2}) = {7x \over 16} $$
and finish at ${13x \over 16}$
</details>