clc
format long G
% Contiguity Matrix
ConMatrix =[0 1 1 1 1 1 1 
    1 0 1 0 0 0 1 
    1 1 0 1 0 0 0 
    1 0 1 0 1 0 0 
    1 0 0 1 0 1 0 
    1 0 0 0 1 0 1 
    1 1 0 0 0 1 0 ] ;

% Sum of Contiguity Matrix Rows
s = sum(ConMatrix,2) ;
% Row Standardized Spatial Weights Matrix = Contiguity Matrix / Sum of Contiguity Matrix Rows
w = ConMatrix./s ;

% Pomprabsattrupai_g_TOTAL = 3655
% WatDebsirin_g_TOTAL = 1886
% Ruangmuang_g_TOTAL = 4345
% Mahapruttaram_g_TOTAL = 2979
% Taradnoi_g_TOTAL = 2057
% Samphanthawong_g_TOTAL = 2687
% BanBat_g_TOTAL = 2028
x = [3655 
    1886 
    4345 
    2979 
    2057 
    2687 
    2028]  ;

z = zscore(x,1) % Z-Scores for a Population  https://www.mathworks.com/help/stats/zscore.html
LISA = z.*(w * z) % LISA Local Spatial Autocorrelation