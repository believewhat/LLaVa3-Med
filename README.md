# LLaVa3-Med

[LLaVa3-Med](https://huggingface.co/akemiH/LLaVa3-Med)

# Inference

```python
CUDA_VISIBLE_DEVICES=0 python -m evaluation \
        --model-path model_path \
        --question-file data_path \
        --image-folder image_path \
        --answers-file result.jsonl \
        --temperature 0.7 \
        --conv-mode llama3
```

# Results

| Task                    | Dataset               | Metric   | Med-Gemini | Med-PaLM-540B | LLaVa3-Med         |
|-------------------------|-----------------------|----------|------------|------|----------------------|
| Open/Close-ended VQA    | Slake-VQA             | Token F1 | 87.5      | 89.3 |   89.8†         |
| Open/Close-ended VQA    | Path-VQA              | Token F1 | 64.7      | 62.7 |  64.9†          |


Table 2 | Multimodal evaluation. Performance comparison of LLaVa3-Med versus state-of-the-art (SoTA) methods.
