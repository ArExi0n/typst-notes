---
title: "Hugging Face"
source: "https://huggingface.co/NeoQuasar/Kronos-Tokenizer-base"
author:
published: 2025-08-02
created: 2026-06-03
description: "We’re on a journey to advance and democratize artificial intelligence through open source and open science."
tags:
  - "clippings"
---
## Kronos: A Foundation Model for the Language of Financial Markets

![Kronos Logo](https://github.com/shiyu-coder/Kronos/blob/master/figures/logo.png?raw=true)

**Kronos** is the **first open-source foundation model** for financial candlesticks (K-lines), trained on data from over **45 global exchanges**. It is designed to handle the unique, high-noise characteristics of financial data.

## Introduction

Kronos is a family of decoder-only foundation models, pre-trained specifically for the "language" of financial markets—K-line sequences. It leverages a novel two-stage framework:

1. A specialized tokenizer first quantizes continuous, multi-dimensional K-line data (OHLCV) into **hierarchical discrete tokens**.
2. A large, autoregressive Transformer is then pre-trained on these tokens, enabling it to serve as a unified model for diverse quantitative tasks.

![Kronos Overview](https://github.com/shiyu-coder/Kronos/blob/master/figures/overview.png?raw=true)

The success of large-scale pre-training paradigm, exemplified by Large Language Models (LLMs), has inspired the development of Time Series Foundation Models (TSFMs). Kronos addresses existing limitations by introducing a specialized tokenizer that discretizes continuous market information into token sequences, preserving both price dynamics and trade activity patterns. We pre-train Kronos using an autoregressive objective on a massive, multi-market corpus of over 12 billion K-line records from 45 global exchanges, enabling it to learn nuanced temporal and cross-asset representations. Kronos excels in a zero-shot setting across a diverse set of financial tasks, including price series forecasting, volatility forecasting, and synthetic data generation.

## Live Demo

We have set up a live demo to visualize Kronos's forecasting results. The webpage showcases a forecast for the **BTC/USDT** trading pair over the next 24 hours.

👉 [Access the Live Demo Here](https://shiyu-coder.github.io/Kronos-demo/)

## Model Zoo

We release a family of pre-trained models with varying capacities to suit different computational and application needs. All models are readily accessible from the Hugging Face Hub.

| Model | Tokenizer | Context length | Param | Hugging Face Model Card |
| --- | --- | --- | --- | --- |
| Kronos-mini | [Kronos-Tokenizer-2k](https://huggingface.co/NeoQuasar/Kronos-Tokenizer-2k) | 2048 | 4.1M | ✅ [NeoQuasar/Kronos-mini](https://huggingface.co/NeoQuasar/Kronos-mini) |
| Kronos-small | [Kronos-Tokenizer-base](https://huggingface.co/NeoQuasar/Kronos-Tokenizer-base) | 512 | 24.7M | ✅ [NeoQuasar/Kronos-small](https://huggingface.co/NeoQuasar/Kronos-small) |
| Kronos-base | [Kronos-Tokenizer-base](https://huggingface.co/NeoQuasar/Kronos-Tokenizer-base) | 512 | 102.3M | ✅ [NeoQuasar/Kronos-base](https://huggingface.co/NeoQuasar/Kronos-base) |
| Kronos-large | [Kronos-Tokenizer-base](https://huggingface.co/NeoQuasar/Kronos-Tokenizer-base) | 512 | 499.2M | ❌ Not yet publicly available |

## Getting Started: Making Forecasts

Forecasting with Kronos is straightforward using the `KronosPredictor` class. It handles data preprocessing, normalization, prediction, and inverse normalization, allowing you to get from raw data to forecasts in just a few lines of code.

**Important Note**: The `max_context` for `Kronos-small` and `Kronos-base` is **512**. This is the maximum sequence length the model can process. For optimal performance, it is recommended that your input data length (i.e., `lookback`) does not exceed this limit. The `KronosPredictor` will automatically handle truncation for longer contexts.

Here is a step-by-step guide to making your first forecast.

### Installation

1. Install Python 3.10+, and then install the dependencies from the [GitHub repository's `requirements.txt`](https://github.com/shiyu-coder/Kronos/blob/main/requirements.txt):
	```shell
	pip install -r requirements.txt
	```

### 1\. Load the Tokenizer and Model

First, load a pre-trained Kronos model and its corresponding tokenizer from the Hugging Face Hub.

```python
from model import Kronos, KronosTokenizer, KronosPredictor

# Load from Hugging Face Hub
tokenizer = KronosTokenizer.from_pretrained("NeoQuasar/Kronos-Tokenizer-base")
model = Kronos.from_pretrained("NeoQuasar/Kronos-small")
```

### 2\. Instantiate the Predictor

Create an instance of `KronosPredictor`, passing the model, tokenizer, and desired device.

```python
# Initialize the predictor
predictor = KronosPredictor(model, tokenizer, device="cuda:0", max_context=512)
```

### 3\. Prepare Input Data

The `predict` method requires three main inputs:

- `df`: A pandas DataFrame containing the historical K-line data. It must include columns `['open', 'high', 'low', 'close']`. `volume` and `amount` are optional.
- `x_timestamp`: A pandas Series of timestamps corresponding to the historical data in `df`.
- `y_timestamp`: A pandas Series of timestamps for the future periods you want to predict.

```python
import pandas as pd

# Load your data (example data can be found in the GitHub repo)
df = pd.read_csv("./data/XSHG_5min_600977.csv")
df['timestamps'] = pd.to_datetime(df['timestamps'])

# Define context window and prediction length
lookback = 400
pred_len = 120

# Prepare inputs for the predictor
x_df = df.loc[:lookback-1, ['open', 'high', 'low', 'close', 'volume', 'amount']]
x_timestamp = df.loc[:lookback-1, 'timestamps']
y_timestamp = df.loc[lookback:lookback+pred_len-1, 'timestamps']
```

### 4\. Generate Forecasts

Call the `predict` method to generate forecasts. You can control the sampling process with parameters like `T`, `top_p`, and `sample_count` for probabilistic forecasting.

```python
# Generate predictions
pred_df = predictor.predict(
    df=x_df,
    x_timestamp=x_timestamp,
    y_timestamp=y_timestamp,
    pred_len=pred_len,
    T=1.0,          # Temperature for sampling
    top_p=0.9,      # Nucleus sampling probability
    sample_count=1  # Number of forecast paths to generate and average
)

print("Forecasted Data Head:")
print(pred_df.head())
```

The `predict` method returns a pandas DataFrame containing the forecasted values for `open`, `high`, `low`, `close`, `volume`, and `amount`, indexed by the `y_timestamp` you provided.

### 5\. Example and Visualization

For a complete, runnable script that includes data loading, prediction, and plotting, please see [`examples/prediction_example.py`](https://github.com/shiyu-coder/Kronos/blob/main/examples/prediction_example.py) in the GitHub repository.

Running this script will generate a plot comparing the ground truth data against the model's forecast, similar to the one shown below:

![Forecast Example](https://github.com/shiyu-coder/Kronos/blob/master/figures/prediction_example.png?raw=true)

Additionally, a script that makes predictions without Volume and Amount data can be found in [`examples/prediction_wo_vol_example.py`](https://github.com/shiyu-coder/Kronos/blob/main/examples/prediction_wo_vol_example.py).

## 🔧 Finetuning on Your Own Data (A-Share Market Example)

Refer to the [README](https://github.com/shiyu-coder/Kronos) of GitHub repository.

## Citation

If you use Kronos in your research, we would appreciate a citation to our [paper](https://huggingface.co/papers/2508.02739):

```
@misc{shi2025kronos,
      title={Kronos: A Foundation Model for the Language of Financial Markets}, 
      author={Yu Shi and Zongliang Fu and Shuo Chen and Bohan Zhao and Wei Xu and Changshui Zhang and Jian Li},
      year={2025},
      eprint={2508.02739},
      archivePrefix={arXiv},
      primaryClass={q-fin.ST},
      url={https://arxiv.org/abs/2508.02739}, 
}
```
## Model tree for NeoQuasar/Kronos-Tokenizer-base

Finetunes

[2 models](https://huggingface.co/models?other=base_model:finetune:NeoQuasar/Kronos-Tokenizer-base)

## Spaces using NeoQuasar/Kronos-Tokenizer-base 50

## Paper for NeoQuasar/Kronos-Tokenizer-base[Paper • 2508.02739 • Published • 37](https://huggingface.co/papers/2508.02739)

The success of large-scale pre-training paradigm, exemplified by Large Language Models (LLMs), has inspired the development of Time Series Foundation Models (TSFMs). However, their application to [financial candlestick](https://huggingface.co/papers?q=financial%20candlestick) (K-line) data remains limited, often underperforming non-pre-trained architectures. Moreover, existing TSFMs often overlook crucial downstream tasks such as [volatility prediction](https://huggingface.co/papers?q=volatility%20prediction) and [synthetic data generation](https://huggingface.co/papers?q=synthetic%20data%20generation). To address these limitations, we propose Kronos, a unified, scalable pre-training framework tailored to financial K-line modeling. Kronos introduces a specialized tokenizer that discretizes continuous market information into [token sequences](https://huggingface.co/papers?q=token%20sequences), preserving both [price dynamics](https://huggingface.co/papers?q=price%20dynamics) and [trade activity patterns](https://huggingface.co/papers?q=trade%20activity%20patterns). We pre-train Kronos using an [autoregressive objective](https://huggingface.co/papers?q=autoregressive%20objective) on a massive, multi-market corpus of over 12 billion K-line records from 45 global exchanges, enabling it to learn nuanced temporal and cross-asset representations. Kronos excels in a [zero-shot setting](https://huggingface.co/papers?q=zero-shot%20setting) across a diverse set of financial tasks. On benchmark datasets, Kronos boosts [price series forecasting](https://huggingface.co/papers?q=price%20series%20forecasting) [RankIC](https://huggingface.co/papers?q=RankIC) by 93% over the leading TSFM and 87% over the best non-pre-trained baseline. It also achieves a 9% lower [MAE](https://huggingface.co/papers?q=MAE) in volatility forecasting and a 22% improvement in [generative fidelity](https://huggingface.co/papers?q=generative%20fidelity) for synthetic K-line sequences. These results establish Kronos as a robust, versatile foundation model for end-to-end financial time series analysis. Our pre-trained model is publicly available at https://github.com/shiyu-coder/Kronos.