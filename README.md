# Tensorflow image recognition in Swift



## How to use

### The automatic and codeless way - recommended
 * Install <a href="http://github.com/mortenjust/trainer-mac">Trainer for Mac</a>
 * Click three times


### The manual way 

To clone the linked Tensorflow repository, use
```
git clone --recursive -j8 https://github.com/mortenjust/tensorswift-ios.git
```

Run the setup file. This will take about 30 minutes on a Macbook pro
```bash
cd tensorswift-ios
./setup.sh
```
The app is set up to do a Google search on the recognized label. You can change that. Open the xcode project, andedit `Config.swift` to change what the app does when it recognizes something.

Train a model with <a href="https://www.tensorflow.org/how_tos/image_retraining/">these instructions</a> or use <a href="http://github.com/mortenjust/trainer-mac">Trainer for Mac</a> to do the hard work
