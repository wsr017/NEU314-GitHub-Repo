
using PyPlot; pygui(true);   # We'll use the plotting package PyPlot and will plot outside the plots pane
using JLD;   # for saving/loading
using Printf # for string formatting

figure(1)

#A. a.
image = imread("el-capitan.png")
imshow(image)

println("size of image: ",(size(image)))

#A. b.
function extractimagechannels(imagename)
    image = imread(imagename)
    imshow(image)

    redchannel = image[:,:,1]
    greenchannel = image[:,:,2]
    bluechannel = image[:,:,3]

    return redchannel, greenchannel, bluechannel #is this right?

end

#A. c/d.
println("Reset with git reset --mixed")

#A. e.
image2 = zeros(360,640,3)
image2[:,:,1]=image[:,:,2] #1 was red, now green
image2[:,:,2]=image[:,:,3] #2 was green, now blue
image2[:,:,3]=image[:,:,1] #3 was blue, now red

subplot(1,2,1)
imshow(image)
title("El-Capitan Image")
axis("off")
subplot(1,2,2)
imshow(image2)
title("El-Capitan Altered Image")
axis("off")


#just hit save button on image to push into gitkraken
