# Monkop for Bitrise
This is the step to test your Android app on [Monkop](https://www.monkop.com/). 


## How to use this Step
Run it directly with Bitrise CLI, `git clone` this repository, `cd` into it's folder in your Terminal/Command Line and call `bitrise run monkop`.

*Check the [`bitrise.yml`](bitrise.yml) file for required inputs which have to be added to your `.bitrise.secrets.yml` file!*

## Step configuration
* **$BITRISE_APK_PATH:** APK path
* **$MONKOP_API_KEY:** This is a unique string associated with your account. To get it you must enable the use of the API Key on [Add-ons](https://console.monkop.com/addOns.xhtml).


*Check [`step.yml`](step.yml) file for more information*
