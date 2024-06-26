python opensora/train/train_t2v.py \
    --model LatteT2V-XL/122 \
    --text_encoder_name DeepFloyd/t5-v1_1-xxl \
    --dataset t2v \
    --ae CausalVAEModel_4x8x8 \
    --ae_path LanguageBind/Open-Sora-Plan-v1.0.0 \
    --data_path /remote-home1/dataset/sharegpt4v_path_cap_64x512x512.json \
    --video_folder /remote-home1/dataset/data_split_tt \
    --text_embed_folder /path/to/text-embed-folder \
    --sample_rate 1 \
    --num_frames 65 \
    --max_image_size 256 \
    --use_recompute True \
    --enable_flash_attention True \
    --batch_size=4 \
    --num_parallel_workers 10 \
    --gradient_accumulation_steps=1 \
    --max_train_steps=1000000 \
    --start_learning_rate=2e-05 \
    --lr_scheduler="constant" \
    --lr_warmup_steps=0 \
    --precision="fp16" \
    --checkpointing_steps=500 \
    --output_dir="t2v-f65-256-img4-videovae488-bf16-ckpt-xformers-bs4-lr2e-5-t5" \
    --pretrained path/to/ckpt/from/last/stage \
    --model_max_length 300 \
    --use_image_num 4 \
    --use_img_from_vid
