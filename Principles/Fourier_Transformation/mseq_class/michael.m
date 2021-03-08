clc
clear all
clf

[mseq_orig, kk,ll] = Ali_mseq(3, 5, 10, 0);
save michael_mseq_orig.txt mseq_orig -ascii
save michael_chunk.txt kk -ascii
save michael_chunked_seq.txt ll -ascii