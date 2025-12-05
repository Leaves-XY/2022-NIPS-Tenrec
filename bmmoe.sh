
bsub -N -q gpu \
-e ./lsflog/mmoe/%J.err \
-o ./lsflog/mmoe/%J.out \
-n 1 \
-gpu "num=1:mode=exclusive_process" \
"python main.py \
  --task_name=mtl \
  --seed=100 \
  --model_name=mmoe \
  --dataset_path='data/ctr_data_1M.csv' \
  --train_batch_size=4096 \
  --val_batch_size=4096 \
  --test_batch_size=4096 \
  --epochs=20 \
  --lr=0.0001 \
  --embedding_size=32 \
  --mtl_task_num=2 \
 >> ./lsflog/mmoe/out.log"