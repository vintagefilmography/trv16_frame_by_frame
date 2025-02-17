# trv16_frame_by_frame  
This project uses the Elmo TRV 16mm projector and an RPI HQ camera for film scanning.  
The film and camera run at 24 FPS and are very closely synchronized.  
The resulting video is very qood quality with 1440x1080 resolution and no flicker.  
But this type of setup has one issue that is hard to resolve and that is ghosting.  
The ghosting effect happens during dynamic scenes with moving objects and appears as a duplicate object  
slightly shifted from the original object.
This is caused by misaligned frames between the projector and the camera since there is no   
indication when the frame starts and in some case the camera will grab both frames.  
This is OK for stationary objects but it is an issue for moving scenes.  
The solution that was tried here was to increase the camera frame rate to 48 FPS, that is  
double the projector rate. In that case the cammera will grab two frame fo reach projector frame. 
With two frames grabbed, one of them will always be good if the system is closelyy synched.  
During post process only one sequence of frame gets extracted either even or odd sequence.
The resulting sequence is then brought into a video editor and set to 24FPS in the timeline. 
Then the original 48 FPS video and d sosund is brought in.
The origina video is then deleted and the resulting tracks contain the videoe that has no 
ghosting and the sound track that is perfectly synchronized.  
One drawback with the RPI solution is low resolution. The RPI will run 800x600 resolution only at 48FPS.
A DSLR solution such as the Panasonic GH5 mayy be a better solution. 
The problem with the GH5 is that it cannot record sound at 48 FPS but that can be  
possibly solve dby using a cheap external HDMI recorder with the sosund input, such as:
https://www.amazon.com/gp/product/B08LPSG8CY
The ghost free vieoe then can be combined with the HMI recorded video and sound and the 
HDMI video can be deleted rersulting in clean video and audio.
Check the enclosed mannuala for more details.




