CUDA_VISIBLE_DEVICES=0 python -m evaluation \
        --model-path model_path \
        --question-file data_path \
        --image-folder image_path \
        --answers-file result.jsonl \
        --temperature 0.7 \
        --conv-mode llama3