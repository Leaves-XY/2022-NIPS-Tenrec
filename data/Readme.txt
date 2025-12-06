The four datasets(QK-video, QK-article, QB-video, QB-article.csv) are raw datasets used in this paper. All task-specific datasets are extracted from these datasets. 

Subdataset:

(1) ctr_data_1M.csv is used in CTR task (Section 3.1) and Multi-Task Learning  (Section 3.3).

(2) cold_data.csv (Table 7, Section 3.6), cold_data_1.csv, cold_data_0.3.csv, cold_data_0.7.csv are used for the  Cold-Start task（see Appendix Table 5）.

(3) task_0.csv, task_1.csv, task_2.csv, task_3.csv are used in Lifelong Learning (see Section 3.7, Table 8). 

(4) sbr_data_1M.csv is used in Session-based Recommendation (Section 3.2), Transfer Learning (Section 3.4, used as pre-training dataset), User Profile Prediction (Section 3.5), Model Compression  (Section 3.8), Model Training Speedup (Section 3.9).

Note that: 

1、Model Inference Speedup Task (Section 3.10):  the  dataset is QB-video, and Transfer Learning Task (Section 3.4):  target dataset is also QB-video.

2、We sort the items at the user level in order of click time, so the time information is implicit in the order of the items.

Example: 
userid itemid
2345   12
2345   5
2345   61
2345   78
2345   35

The click sequence of user 2345 is [12, 5, 61, 78, 35].
