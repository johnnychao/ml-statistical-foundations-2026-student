# 每章自主實作指南

本課程不要求繳交作業。學生每章的目標是：跟著老師在 Colab 操作，保存自己的 notebook 副本，並能用自己的話說明程式結果。

## Google Colab 立即開始

上課主流程是直接使用每章官方 Lab。學生不需要 GitHub 帳號，也不需要先下載 ZIP。

## 每章共同流程

1. 在下方表格找到當週章節，點 `開啟 Lab`。
2. 進入 Google Colab 後，選 `File -> Save a copy in Drive`，建立自己的副本。
3. 從第一個 code cell 開始執行。
4. 若出現 `ModuleNotFoundError: No module named 'ISLP'`，請在最上方新增一格並執行 `!pip install ISLP`。
5. 不需要繳交；請把副本留在自己的 Google Drive，作為複習紀錄。

在原始 Colab 頁面執行不會影響官方 GitHub Lab；另存 Drive 是為了保留自己的修改、執行結果與筆記。

## 官方 Lab 開啟方式

下方是每章上課主流程使用的官方 Lab Colab 連結。學生也可以課後自行開啟對照練習。

| 章節 | 主題 | 官方 Lab Colab |
| --- | --- | --- |
| Ch02 | Statistical Learning | [開啟 Lab](https://colab.research.google.com/github/intro-stat-learning/ISLP_labs/blob/v2.2.3/Ch02-statlearn-lab.ipynb) |
| Ch03 | Linear Regression | [開啟 Lab](https://colab.research.google.com/github/intro-stat-learning/ISLP_labs/blob/v2.2.3/Ch03-linreg-lab.ipynb) |
| Ch04 | Classification | [開啟 Lab](https://colab.research.google.com/github/intro-stat-learning/ISLP_labs/blob/v2.2.3/Ch04-classification-lab.ipynb) |
| Ch05 | Resampling Methods | [開啟 Lab](https://colab.research.google.com/github/intro-stat-learning/ISLP_labs/blob/v2.2.3/Ch05-resample-lab.ipynb) |
| Ch06 | Model Selection and Regularization | [開啟 Lab](https://colab.research.google.com/github/intro-stat-learning/ISLP_labs/blob/v2.2.3/Ch06-varselect-lab.ipynb) |
| Ch07 | Moving Beyond Linearity | [開啟 Lab](https://colab.research.google.com/github/intro-stat-learning/ISLP_labs/blob/v2.2.3/Ch07-nonlin-lab.ipynb) |
| Ch08 | Tree-Based Methods | [開啟 Lab](https://colab.research.google.com/github/intro-stat-learning/ISLP_labs/blob/v2.2.3/Ch08-baggboost-lab.ipynb) |
| Ch09 | Support Vector Machines | [開啟 Lab](https://colab.research.google.com/github/intro-stat-learning/ISLP_labs/blob/v2.2.3/Ch09-svm-lab.ipynb) |
| Ch10 | Deep Learning | [開啟 Lab](https://colab.research.google.com/github/intro-stat-learning/ISLP_labs/blob/v2.2.3/Ch10-deeplearning-lab.ipynb) |
| Ch11 | Survival Analysis | [開啟 Lab](https://colab.research.google.com/github/intro-stat-learning/ISLP_labs/blob/v2.2.3/Ch11-surv-lab.ipynb) |
| Ch12 | Unsupervised Learning | [開啟 Lab](https://colab.research.google.com/github/intro-stat-learning/ISLP_labs/blob/v2.2.3/Ch12-unsup-lab.ipynb) |
| Ch13 | Multiple Testing | [開啟 Lab](https://colab.research.google.com/github/intro-stat-learning/ISLP_labs/blob/v2.2.3/Ch13-multiple-lab.ipynb) |

若官方 Lab 在 Colab 中缺少套件，請先執行：

```python
!pip install ISLP
```

## 練習模板何時使用

官方 Lab 是上課主要操作內容；[Colab 練習模板](https://colab.research.google.com/github/johnnychao/ml-statistical-foundations-2026-student/blob/main/notebooks/01_practice_template.ipynb) 適合課後整理、換資料、改模型，或把當週重點整理成自己的練習紀錄。

使用練習模板時，也請先選 `File -> Save a copy in Drive`。

## 每章練習方式

| 章節 | 自主實作任務 | 學生要能說明 |
| --- | --- | --- |
| Ch02 | 跑通資料讀取、基本圖表與簡單 prediction 範例。 | 什麼是 prediction、interpretation、training error、test error。 |
| Ch03 | 建立 linear regression，觀察係數、殘差與圖表。 | 係數代表關聯，不一定代表因果；殘差圖用來檢查模型是否合理。 |
| Ch04 | 比較 logistic regression、LDA、QDA、KNN。 | classification 與 regression 的差異，以及 confusion matrix 的意義。 |
| Ch05 | 使用 validation set、k-fold cross-validation 或 bootstrap。 | 為什麼不能只看訓練資料表現，以及 validation/test 的角色。 |
| Ch06 | 比較 subset selection、ridge、lasso。 | regularization 為什麼可以降低 overfitting，lambda 會影響模型複雜度。 |
| Ch07 | 練習 polynomial、splines、GAM。 | 非線性模型可以更彈性，但也更需要檢查 overfitting。 |
| Ch08 | 訓練 tree、random forest、boosting。 | tree-based methods 如何切分資料，以及變數重要性不能直接解釋成因果。 |
| Ch09 | 練習 SVM 與 kernel。 | margin、support vectors、kernel 的直覺意義。 |
| Ch10 | 跑通 neural network 範例，觀察訓練過程。 | epoch、loss、overfitting、validation 的基本概念。 |
| Ch11 | 練習 survival analysis 與 censoring 資料。 | censoring 是什麼，以及 survival curve 的解讀方式。 |
| Ch12 | 練習 PCA、k-means、hierarchical clustering。 | unsupervised learning 沒有標準答案，要用圖表與脈絡解釋結果。 |
| Ch13 | 練習 multiple testing 與 FDR 控制。 | 多次檢定會增加 false positives，FDR 是控制錯誤發現比例的做法。 |

## 每章自我檢查

完成一章練習後，請確認自己能回答：

- 這章的資料從哪裡來？
- 哪幾行程式是資料整理？
- 哪幾行程式是模型訓練或分析？
- 哪個輸出最重要？為什麼？
- 這個結果可以解釋成 prediction、association，還是只是 exploration？
- 有哪些限制？哪些話不能講成因果？
