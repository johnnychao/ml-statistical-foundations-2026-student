# Google Colab 使用方式

本課程上課主流程是直接用 Google Colab 開啟每章官方 Lab。學生不需要 GitHub 帳號。

## 最快方式

上課時，請先開啟：

[每章自主實作指南](practice/CHAPTER_PRACTICE_GUIDE.md)

找到當週章節後，點右側的 `開啟 Lab`。進入 Colab 後先選 `File -> Save a copy in Drive`，再開始執行。

在原始 Colab 頁面執行不會影響官方 GitHub Lab；但若要保留自己的修改、執行結果與筆記，請一定要另存到 Google Drive。

## 方法一：從 Colab 開 GitHub

這個方法主要用來開啟本 repo 的練習模板；每章官方 Lab 建議直接從 [每章自主實作指南](practice/CHAPTER_PRACTICE_GUIDE.md) 點選。

1. 打開 Google Colab。
2. 選 `File` -> `Open notebook`。
3. 選 `GitHub`。
4. 輸入：

```text
johnnychao/ml-statistical-foundations-2026-student
```

5. 選擇要開啟的 notebook。

## 方法二：直接開啟常用 notebook

- [環境檢查 notebook](https://colab.research.google.com/github/johnnychao/ml-statistical-foundations-2026-student/blob/main/notebooks/00_environment_check.ipynb)
- [練習模板 notebook](https://colab.research.google.com/github/johnnychao/ml-statistical-foundations-2026-student/blob/main/notebooks/01_practice_template.ipynb)

## 官方 Lab 執行方式

建議流程：

1. 從 [每章自主實作指南](practice/CHAPTER_PRACTICE_GUIDE.md) 找到當週章節。
2. 點 `開啟 Lab`。
3. 選 `File -> Save a copy in Drive`，建立自己的副本。
4. 從第一格開始執行。
5. 若出現 `ModuleNotFoundError: No module named 'ISLP'`，請在最上方新增一格並執行：

```python
!pip install ISLP
```

安裝完成後，再重新執行原本 `import ISLP` 的 cell。

## 練習模板用途

`01_practice_template.ipynb` 適合課後整理或延伸練習，不是每章主流程。

建議流程：

1. 先開啟練習模板連結。
2. 選 `File -> Save a copy in Drive`，建立自己的副本。
3. 從第一格開始執行。
4. 若第一個 code cell 顯示正在安裝 `ISLP`，請等它完成。
5. 安裝完成後，再繼續執行後面的 `import` 與資料讀取 cell。

注意：Colab 每次重新開啟、重新匯入 notebook，或 runtime 被重設時，都可能需要重新安裝 `ISLP`。這是 Colab 的正常行為。

## Colab 第一次執行與 ISLP

`00_environment_check.ipynb` 與 `01_practice_template.ipynb` 都已包含 Colab 前置檢查 cell。第一次執行時，若 Colab 尚未安裝 `ISLP`，會自動安裝。

官方 Lab 若仍看到 `ModuleNotFoundError: No module named 'ISLP'`，請在錯誤 cell 上方新增一格並執行：

```python
!pip install ISLP
```

安裝完成後，再重新執行原本 `import ISLP` 的 cell。

## 保存自己的副本

Colab 上課練習時，建議選：

```text
File -> Save a copy in Drive
```

這樣學生才會有自己的副本，不會只是看老師的版本。

## 如果已下載 ZIP 到桌面

下載 ZIP 是備用方式。若學生已經下載並解壓縮，可在 Colab 選 `File -> Upload notebook`，再上傳：

```text
notebooks/01_practice_template.ipynb
```

官方 Lab 不在本 repo 的 ZIP 裡；每章官方 Lab 仍建議直接使用 [每章自主實作指南](practice/CHAPTER_PRACTICE_GUIDE.md) 的 `開啟 Lab` 連結。

## 注意

- Colab 適合上課快速實作。
- 本機 Jupyter 適合長期練習與反覆複習。
- 不要在 notebook 裡輸入密碼、token 或私人 API key。
