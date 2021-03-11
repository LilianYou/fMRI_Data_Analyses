%-----------------------------------------------------------------------
% Job saved on 21-Oct-2018 19:44:46 by cfg_util (rev $Rev: 6942 $)
% spm SPM - SPM12 (7219)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.spm.util.imcalc.input = {'<UNDEFINED>'};
matlabbatch{1}.spm.util.imcalc.output = '';
matlabbatch{1}.spm.util.imcalc.outdir = {'/Users/user/Desktop/Fall_2018/PSYCH221E/HW/HW1/Data_Output'};
matlabbatch{1}.spm.util.imcalc.expression = 'i1 == 161';
matlabbatch{1}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{1}.spm.util.imcalc.options.dmtx = 0;
matlabbatch{1}.spm.util.imcalc.options.mask = 0;
matlabbatch{1}.spm.util.imcalc.options.interp = 1;
matlabbatch{1}.spm.util.imcalc.options.dtype = 4;
matlabbatch{2}.spm.spatial.normalise.estwrite.subj.vol = {'<UNDEFINED>'};
matlabbatch{2}.spm.spatial.normalise.estwrite.subj.resample(1) = cfg_dep('Image Calculator: ImCalc Computed Image: ', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{2}.spm.spatial.normalise.estwrite.eoptions.biasreg = 0.0001;
matlabbatch{2}.spm.spatial.normalise.estwrite.eoptions.biasfwhm = 60;
matlabbatch{2}.spm.spatial.normalise.estwrite.eoptions.tpm = {'/Users/user/Desktop/Fall_2018/PSYCH221E/Lab/spm12/tpm/TPM.nii'};
matlabbatch{2}.spm.spatial.normalise.estwrite.eoptions.affreg = 'mni';
matlabbatch{2}.spm.spatial.normalise.estwrite.eoptions.reg = [0 0.001 0.5 0.05 0.2];
matlabbatch{2}.spm.spatial.normalise.estwrite.eoptions.fwhm = 0;
matlabbatch{2}.spm.spatial.normalise.estwrite.eoptions.samp = 3;
matlabbatch{2}.spm.spatial.normalise.estwrite.woptions.bb = [-78 -112 -70
                                                             78 76 85];
matlabbatch{2}.spm.spatial.normalise.estwrite.woptions.vox = [2 2 2];
matlabbatch{2}.spm.spatial.normalise.estwrite.woptions.interp = 1;
matlabbatch{2}.spm.spatial.normalise.estwrite.woptions.prefix = 'w';
