clc
clear all
clf

[mseq_orig, kk,ll] = Ali_mseq(3, 5, 5, 50);
save katherine_mseq_orig_3.txt mseq_orig -ascii
save katherine_chunk_3.txt kk -ascii
save katherine_chunked_seq_3.txt ll -ascii