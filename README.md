# byyourside
 
How does it feel to observe the wall? How does it feel to be alone in the wall? 
The idea behind my program "byyourside" is to explore the sensations of rock climbing. 

"The Microsoft Kinect sensor is a peripheral device (designed for XBox and windows PCs) that functions much like a webcam. However, in addition to providing an RGB image, it also provides a depth map. Meaning for every pixel seen by the sensor, the Kinect measures distance from the sensor." (Daniel Shiffman: "Getting Started with Kinect and Processing") 

This in my case meant that I can use the Kinect to create an interactive video installation, depending on the position of a user in front of the device. I found a video on youtube that shows a slow zoom in to a rock climber who is challenging a wall, probably in the Yosemite National Park. 

https://www.youtube.com/watch?v=W2eMV5ucCkg

I faced two tasks: Combining the Kinect with Processing and control a video with Processing.  I found two code examples that dealed with similar problems. 

https://forum.processing.org/two/discussion/27718/how-can-i-get-sound-to-fade-in-and-out-depending-on-your-location

The first code made the interaction between the user and the kinect possible. It measures the distance and therefore fades in video and sound. 

https://forum.processing.org/two/discussion/17427/interactive-video-with-mouse-function

The second code made the interaction between Processing and the video possible. It sets a specific frame depending on the position of the mouse in the display. 

Combining these two codes made my project possible: Using your Kinect as a regulator for videos. 

"In the beginning you are far from the Kinect and therefore far from the wall."
The video starts at frame 0, the beginning of the video if you are the farest from the device.

"If you approach the Kinect, you approach the wall."
The video plays forward if you apprach the device. It stops if you stop. It play backwards if you walk backwards. 

With this, I tried to distill the sensation of beeing completely at the mercy of nature. Observing the wall, you feel respect, maybe fear. But climbing up, you are only by yourself. Seeing nothing but the way up. 



