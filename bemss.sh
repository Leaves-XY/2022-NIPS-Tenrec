
bsub -N -q gpu \
-e ./lsflog/esmm/%J.err \
-o ./lsflog/esmm/%J.out \
-n 1 \
-gpu "num=1:mode=exclusive_process" \
"python main.py \
  --task_name=mtl \
  --seed=100 \
  --model_name=esmm \
 --dataset_path='data/ctr_data_user50k_1.csv' \
  --train_batch_size=512 \
  --val_batch_size=512 \
  --test_batch_size=512 \
  --epochs=20 \
  --lr=0.0001 \
  --embedding_size=32 \
  --mtl_task_num=2 \
 >> ./lsflog/esmm/out.log"