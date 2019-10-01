
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




#just hit save button on image to push into gitkraken
