Author : Siddhant Prakash

About:
------
The code given here is for simple image stitching of two images using OpenCV. We can use the same code multiple times to stitch multiple images. As the code resizes each images everytime it uses a new image, it is automatically stitched.

OpenCV "also has a stitching module" which helps in achieving this task and which is more robust than this. 

The code present here helped me in understanding the major steps involved in image stitching algorithm. 

I am using OpenCV 2.4.7 and vim editor.  This code is based on the openCV tutorial available http://ramsrigoutham.com/2012/11/22/panorama-image-stitching-in-opencv/.

The main parts of stitching algorithm are –  
1) Finding Surf descriptors in both images, 
2) Matching the surf descriptors between two images, 
3) Using  RANSAC to estimate the homography matrix using the matched surf descriptors,and
4) Warping the images based on the homography matrix.


Execution :
-----------

1) Compile the code using Makefile given, using the command "make pano"( as the src file is named pano.cpp). It will create an executable pano.
2) Run the executable by passing the image files as its arguements in the format, "./pano <img_file_1> <img_file_2>". 
   For example, to use the files in data1 directory use "./pano data1/panorama_image1.jpg data1/panorama_image2.jpg".
   The Resulting image is created and stored in the current directory with the name, "Result.jpg" .


==================
