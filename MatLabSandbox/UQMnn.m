%% import data

path = '/Users/KirstenZ/Dropbox/UQ/FeedbackAnalytics/Usage paper/Analysis/Data Stage 2/';
f = strcat(path, 'AcPdf.csv');

AcP = importAcP(strcat(path, 'AcPdf.csv'));
FbPsum = importFbPsum(strcat(path, 'FbPsummary.csv'));

%% play with subset of data
AcP = AcP(1:10,:);
FbPsum = FbPsum(1:10,:);

%% set up categories
%AcP.StudentID = categorical(AcP.StudentID);
%AcP.SubmissionID = categorical(AcP.SubmissionID);

catVars = {'StudentID', 'SubmissionID', 'MarkerID', 'project', 'course', 'sem', 'report'};

a = AcP(:,catVars);

%% convert
for i = 1:width(a)
    b{i,:} = categorical(a{:,i});
end

%b{5,1} works
%b{5}
%b{5}(1:3)

%{'q' 'r' 's'} %is equivalent format to... 
%catVars(1:3) %ie 1 row with 3 columns
%table([1;2;3], ['m'; 'm'; 'f'], logical([1;0;1]), 'VariableNames',catVars(1:3))

%d = b'

%table(d{1},d{2},'VariableNames',catVars(1:2))
%table(d{1:7},'VariableNames',catVars(1:7))
%table(d{:},'VariableNames',catVars) %hoooooorrrraayyyyyyy!!!!!
cats = table(b{:},'VariableNames',catVars) %also works


