# Google Colab 使用方式

本 repo 的學生版 notebook 可以直接用 Google Colab 開啟。

## 最快方式

上課或自主練習時，請直接開啟：

[點我開啟 Colab 練習模板](https://colab.research.google.com/github/johnnychao/ml-statistical-foundations-2026-student/blob/main/notebooks/01_practice_template.ipynb)

打開後先選 `File -> Save a copy in Drive`，再從第一格開始執行。

## 方法一：從 Colab 開 GitHub

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

## 啟動練習模板

建議流程：

1. 先開啟練習模板連結。
2. 選 `File -> Save a copy in Drive`，建立自己的副本。
3. 從第一格開始執行。
4. 若第一個 code cell 顯示正在安裝 `ISLP`，請等它完成。
5. 安裝完成後，再繼續執行後面的 `import` 與資料讀取 cell。

注意：Colab 每次重新開啟、重新匯入 notebook，或 runtime 被重設時，都可能需要重新安裝 `ISLP`。這是 Colab 的正常行為。

## Colab 第一次執行

`00_environment_check.ipynb` 與 `01_practice_template.ipynb` 都已包含 Colab 前置檢查 cell。第一次執行時，若 Colab 尚未安裝 `ISLP`，會自動安裝。

如果你開到的是舊版 notebook，或仍看到 `ModuleNotFoundError: No module named 'ISLP'`，請在錯誤 cell 上方新增一格並執行：

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

## 注意

- Colab 適合上課快速實作。
- 本機 Jupyter 適合長期練習與反覆複習。
- 不要在 notebook 裡輸入密碼、token 或私人 API key。
