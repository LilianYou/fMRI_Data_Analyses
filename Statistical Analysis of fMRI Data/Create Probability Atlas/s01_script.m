% List of open inputs
nrun = X; % enter the number of runs here
jobfile = {'/Users/user/Desktop/Fall_2018/PSYCH221E/HW/HW1/Data_Output/s01_script_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(0, nrun);
for crun = 1:nrun
end
spm('defaults', 'FMRI');
spm_jobman('run', jobs, inputs{:});
