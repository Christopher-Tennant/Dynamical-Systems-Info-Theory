%% Entropy fun
% Silly little code to have some fun with Shannon's measure of entropy.
% Make sure this script and the 'entropy.m' function are in the same
% directory. 'entropy.m' takes numeric or character input.

%% Set environment
clc
clear
close all

%% Examples
% Example 1
disp('Think of entropy as the average number of questions one needs to ask to guess an outcome.')
disp(' ')
disp('For example, 2 letters (a and b) are stored in a machine in equal amounts, the entropy, or')
disp('average number of questions needed to guess the outcome is:')
disp('entropy(''ab''):')

entropy('ab')

disp(' ')
disp('Note that as long as the number of a''s and b''s or p(a) = 0.5 and p(b) = 0.5 it')
disp('does not matter how many total letters are in the machine. For example:')
disp('entropy(''ab''):')

entropy('ab')

disp('entropy(''aabb''):')

entropy('aabb')

disp('entropy(''aaaaaaaaaabbbbbbbbbb''):')

entropy('aaaaaaaaaabbbbbbbbbb')

disp(' ')
disp('However, as the symbol space grows (i.e. the total # of DIFFERENT symbols), there is more entropy.')
disp('The entropy of ''a$b&'':')

entropy('a$b&')

disp('is greater than the entropy of ''ab'':')

entropy('ab')