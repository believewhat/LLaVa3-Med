# LLaVa3-Med

Model Link: [LLaVa3-Med](https://huggingface.co/akemiH/LLaVa3-Med)

We apply 3-stages to train our model.

1. Pretraining: We utilize a dataset comprising 600k image-text pairs from PMC and 60k medical references based on Mayo Clinic guidelines for the pretraining phase.
2. Instruction Fine-tuning: We employ a dataset consisting of 60k LLaVA_Med instruction fine-tuning examples and PMC-VQA datasets to perform instruction learning.
3. Fine-tuning: Our model undergoes fine-tuning on various VQA datasets.

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

Because GPT-4 has not been fine-tuned on these VQA tasks, the answers it generates for open questions differ significantly in style from the reference answers. Therefore, we employed a few-shot approach and modified GPT-4's answers to match the style of the reference answers.


| Dataset               | Metric   | Med-Gemini | Med-PaLM-540B | GPT-4V | LLaVa3-Med|
|-----------------------|----------|------------|------|------|----------------------|
| Slake-VQA             | Token F1 | 87.5      | 89.3 | 76.8 |   89.8†         |
| Path-VQA              | Token F1 | 64.7      | 62.7 | 57.7 |  64.9†          |


Table 1 | Multimodal evaluation. Performance comparison of LLaVa3-Med versus state-of-the-art (SoTA) methods.
