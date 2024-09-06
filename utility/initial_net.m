function initial_net()
% INITIAL_NET: Loading VGG-Net-19

global net;
global enableGPU;
addpath('E:\Universitys semesters\payan nameh\My Code\Experiments\model');
% net = load(fullfile('model', 'imagenet-vgg-verydeep-19.mat'));
net = load(fullfile('imagenet-caffe-alex.mat'));
% Remove the fully connected layers and classification layer
net.layers(37+1:end) = [];

% Switch to GPU mode
if enableGPU
    net = vl_simplenn_move(net, 'gpu');
end

net=vl_simplenn_tidy(net);

end