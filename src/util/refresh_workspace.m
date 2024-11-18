% REFRESH_WORKSPACE  Bring computed data in global workspace.

% Find the output results directory
outDirectory = fullfile(fileparts(mfilename('fullpath')), "../../out/");

RunArg = load(fullfile(outDirectory, "runArguments.mat"));
Stm    = load(fullfile(outDirectory, "statement.mat"));

clear outDirectory;
