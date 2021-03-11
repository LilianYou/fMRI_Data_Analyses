%-----------------------------------------------------------------------
% Job saved on 22-Oct-2018 11:43:22 by cfg_util (rev $Rev: 6942 $)
% spm SPM - SPM12 (7219)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.spm.util.imcalc.input = {
                                        '/Users/user/Desktop/Fall_2018/PSYCH221E/HW/HW1/Data_Output/wiS02.delineation.structure.label.img,1'
                                        '/Users/user/Desktop/Fall_2018/PSYCH221E/HW/HW1/Data_Output/wiS03.delineation.structure.label.img,1'
                                        '/Users/user/Desktop/Fall_2018/PSYCH221E/HW/HW1/Data_Output/wiS04.delineation.structure.label.img,1'
                                        };
matlabbatch{1}.spm.util.imcalc.output = '2_4';
matlabbatch{1}.spm.util.imcalc.outdir = {'/Users/user/Desktop/Fall_2018/PSYCH221E/HW/HW1/Data_Output'};
matlabbatch{1}.spm.util.imcalc.expression = 'int32((i2+i3+i4)*10000/3)';
matlabbatch{1}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{1}.spm.util.imcalc.options.dmtx = 0;
matlabbatch{1}.spm.util.imcalc.options.mask = 0;
matlabbatch{1}.spm.util.imcalc.options.interp = 1;
matlabbatch{1}.spm.util.imcalc.options.dtype = 8;
