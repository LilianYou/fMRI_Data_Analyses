% List of open inputs
% Run Batch Jobs: NIfTI Images - cfg_files
nrun = X; % enter the number of runs here
jobfile = {'/Users/user/Desktop/Fall_2018/PSYCH221E/HW/HW1/batch0_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(1, nrun);
for crun = 1:nrun
    inputs{1, crun} = MATLAB_CODE_TO_FILL_INPUT; % Run Batch Jobs: NIfTI Images - cfg_files
end
spm('defaults', 'FMRI');
spm_jobman('run', jobs, inputs{:});
