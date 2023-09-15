close all
Path1 = '/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/Eye tracking database/Eye tracking database/DATA/hp';
path2 = '/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/Eye tracking database/Eye tracking database/ALLSTIMULI';
showEyeData(Path1, path2)
saliency('sampleImage.jpeg');

%% 
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/Eye tracking database/Eye tracking database/DatabaseCode')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/matlabPyrTools-master/matlabPyrTools-master')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/SaliencyToolbox2.3/SaliencyToolbox')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/voc-release-3.1-win-master/voc-release-3.1-win-master')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/JuddSaliencyModel/JuddSaliencyModel')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/JuddSaliencyModel/JuddSaliencyModel/horizon code')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/voc-release-3.1-win-master/voc-release-3.1-win-master')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/JuddSaliencyModel/__MACOSX/JuddSaliencyModel/FelzenszwalbDetectors')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/Eye tracking database/Eye tracking database/DatabaseCode')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/matlabPyrTools-master/matlabPyrTools-master');
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/SaliencyToolbox2.3/SaliencyToolbox')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/voc-release-3.1-win-master/voc-release-3.1-win-master')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/LabelMeToolbox-master/LabelMeToolbox-master/imagemanipulation')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/JuddSaliencyModel/JuddSaliencyModel/FelzenszwalbDetectors')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/LabelMeToolbox-master/LabelMeToolbox-master')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/LabelMeToolbox-master/LabelMeToolbox-master/features')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/JuddSaliencyModel/JuddSaliencyModel')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/FaceDetect')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/matlabPyrTools-master/matlabPyrTools-master/MEX')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/Eye tracking database/Eye tracking database/ALLSTIMULI')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/JuddSaliencyModel/JuddSaliencyModel/horizon code')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/gbvs/gbvs')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/gbvs/gbvs/util')

path1 = '/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/Eye tracking database/ALLSTIMULI';
path2 = '/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/Eye tracking database/DATA';

showEyeDataAcrossUsers(path2, path1, 1)


%%
close all;
showEyeDataAcrossUsers('../ALLSTIMULI', 4)
%% part 2
clear; clc; close all;
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/LabelMeToolbox-master/LabelMeToolbox-master')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/matlabPyrTools-master/matlabPyrTools-master')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/voc-release-3.1-win-master/voc-release-3.1-win-master')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/SaliencyToolbox2.3/SaliencyToolbox')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/FaceDetect')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/LabelMeToolbox-master/LabelMeToolbox-master/imagemanipulation')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/LabelMeToolbox-master/LabelMeToolbox-master/features')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/JuddSaliencyModel/JuddSaliencyModel/horizon code')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/JuddSaliencyModel/JuddSaliencyModel')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/JuddSaliencyModel/JuddSaliencyModel/FelzenszwalbDetectors')

imagefile = '.jpeg';
features = {'Subband', 'Itti', 'RGB', 'Torralba', ...
    'Horizon', 'Object Features', 'Center'};
for i = 1: 7
    [saliencyMap{i}, FEATURES{i}] = saliency(imagefile);
end

for Feature_Num = 1: 7
    subplot(4, 2, Feature_Num);
    if Feature_Num == 1
       imshow(imread(imagefile)); 
    else
       imshow(saliencyMap{Feature_Num - 1}); 
       title(features{Feature_Num - 1});
    end   
end


%% 
clear; clc; close all;
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/LabelMeToolbox-master/LabelMeToolbox-master')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/matlabPyrTools-master/matlabPyrTools-master')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/voc-release-3.1-win-master/voc-release-3.1-win-master')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/SaliencyToolbox2.3/SaliencyToolbox')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/FaceDetect')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/LabelMeToolbox-master/LabelMeToolbox-master/imagemanipulation')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/LabelMeToolbox-master/LabelMeToolbox-master/features')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/JuddSaliencyModel/JuddSaliencyModel/horizon code')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/JuddSaliencyModel/JuddSaliencyModel')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/JuddSaliencyModel/JuddSaliencyModel/FelzenszwalbDetectors')

filename = 'i2057541';

imagefile = cat(2, filename, '.jpeg')

for i = 1: 7
    [saliencyMap{i}, FEATURES{i}] = saliency(imagefile, i, 0);
end





%% for all subjects
%% Setup parameters
dataDir = '/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/Eye tracking database/Eye tracking database/DatabaseCode';
subjectNames = {'ajs', 'CNG', 'emb', 'ems', 'ff', 'hp', 'jcw', ...
    'jw', 'kae', 'krl', 'po', 'tmj', 'tu', 'ya', 'zb'};

%% Process each saliency map
for mapIndex = 1:length(saliencyMap)
    disp(mapIndex)
    tic
    
    currentFilename = filenames{stimNum(mapIndex)};
    
    for featureIndex = 1:7
        currentSaliencyMap = saliencyMap{mapIndex}{featureIndex};
        
        for subjectIndex = 1:length(subjectNames)
            % Load subject data
            datapath = fullfile(dataDir, subjectNames{subjectIndex}, currentFilename);
            subjectData = load(datapath);
            subjectData = struct2cell(subjectData);
            
            % Extract eye data
            X = subjectData{1, 1}.DATA.eyeData(:, 1);
            Y = subjectData{1, 1}.DATA.eyeData(:, 2);
            
            % Process eye data
            segmentLength = floor(length(X) / 6);
            [X1, Y1] = processEyeData(X, Y, segmentLength, 1);
            [X2, Y2] = processEyeData(X, Y, segmentLength, 4);
            
            % Calculate ROC score
            score1{subjectIndex}(mapIndex, featureIndex) = rocScoreSaliencyVsFixations(currentSaliencyMap, X1, Y1, size(currentSaliencyMap));
            score2{subjectIndex}(mapIndex, featureIndex) = rocScoreSaliencyVsFixations(currentSaliencyMap, X2, Y2, size(currentSaliencyMap));
        end
    end
    toc
end








%%
clc; clear score


subjectnames = {'ajs', 'CNG', 'emb', 'ems', 'ff', 'hp', 'jcw', ...
    'jw', 'kae', 'krl', 'po', 'tmj', 'tu', 'ya', 'zb'};


features = {'Subband', 'Itti', 'Color', 'Torralba', ...
    'Horizon', 'Objects', 'DistToCenter', 'All'};

for isb = 1: length(subjectnames)
    isb
   % data_path = fullfile('addpath'/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/Eye tracking database/Eye tracking database/DatabaseCode', subjectnames{isb});
    data = load(fullfile(data_path, filename));
    data = struct2cell(data);
    X = data{1}.DATA.eyeData(:, 1);
    Y = data{1}.DATA.eyeData(:, 2);
    for i = 1: 8
        score(i, 2, isb) = rocScoreSaliencyVsFixations(saliencyMap{i}, X(floor(length(X)/2)+1: end), Y(floor(length(X)/2)+1: end), size(saliencyMap{i}));
        score(i, 1, isb) = rocScoreSaliencyVsFixations(saliencyMap{i}, X(1:floor(length(X)/2)), Y(1:floor(length(X)/2)), size(saliencyMap{i}));
    end
end

%%
%%

% ---- Load and preprocess data ----
load('ROC.mat')

% Define shorter names for features
featureNames = {'Subband', 'Itti', 'Color', 'Torralba', 'Horizon', 'Object', 'Center'};

% Preprocess data and store in structured array
ROCs_struct = struct();
for i = 1:7
    ROCs_struct.(featureNames{i}).firstHalf = squeeze(ROCs([1:46 48:464],i,1));
    ROCs_struct.(featureNames{i}).secondHalf = squeeze(ROCs([1:46 48:464],i,2));
    ROCs_struct.(featureNames{i}).binEdges = linspace(min([ROCs_struct.(featureNames{i}).firstHalf; ROCs_struct.(featureNames{i}).secondHalf]), max([ROCs_struct.(featureNames{i}).firstHalf; ROCs_struct.(featureNames{i}).secondHalf]), 31);
end

% ---- Generate plots ----
for i = 1:7
    feature = featureNames{i};
    
    figure('Color',[1 1 1]); % Set the figure background color to white
    
    % Data for each half
    data1 = ROCs_struct.(feature).firstHalf;
    data2 = ROCs_struct.(feature).secondHalf;
    binEdges = ROCs_struct.(feature).binEdges;
    
    % Plot two histograms in the same figure
    histogram(data1, binEdges, 'FaceColor', 'r');
    hold on
    histogram(data2, binEdges, 'FaceColor', 'k');
    hold off
    
    % Annotate the plot
    legend({'First half', 'Second half'})
    title({feature})
end








%% 
clear; clc; close all;

load stim_ajs.mat
datafolder = '/Users/aliakbarmahmoodzadeh/Desktop/HW5_ATN/Answer/Eye tracking database/Eye tracking database/DatabaseCode\ajs';
files=dir(fullfile(datafolder,'*.mat'));
[filenames{1:size(files,1)}] = deal(files.name);




addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/LabelMeToolbox-master/LabelMeToolbox-master')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/matlabPyrTools-master/matlabPyrTools-master')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/voc-release-3.1-win-master/voc-release-3.1-win-master')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/SaliencyToolbox2.3/SaliencyToolbox')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/FaceDetect')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/LabelMeToolbox-master/LabelMeToolbox-master/imagemanipulation')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/LabelMeToolbox-master/LabelMeToolbox-master/features')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/JuddSaliencyModel/JuddSaliencyModel/horizon code')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/JuddSaliencyModel/JuddSaliencyModel')
addpath('/Users/aliakbarmahmoodzadeh/Desktop/ADN_HW8/JuddSaliencyModel/JuddSaliencyModel/FelzenszwalbDetectors')

for i = 1: length(stimuliNum)
    i
    stml = filenames{stimuliNum(i)}
    imagePath = fullfile(imgDir, stml);
    dataPath = fullfile(dataDir, 'ajs');
    dataPath = fullfile(dataPath, stml);
    for f = 1: 7
        [saliencyMap{i}{f}] = saliency(cat(2, stml(1:end-4), '.jpeg'), f, 0);
    end
    data = load(dataPath);
    EyeData{i} = struct2cell(data);
end


%%
%% Helper functions
function [processedX, processedY] = processEyeData(X, Y, segmentLength, segmentStart)
    processedX = X(segmentStart*segmentLength:(segmentStart+1)*segmentLength);
    processedX = processedX(~isnan(processedX));
    
    processedY = Y(segmentStart*segmentLength:(segmentStart+1)*segmentLength);
    processedY = processedY(~isnan(processedY));
end












