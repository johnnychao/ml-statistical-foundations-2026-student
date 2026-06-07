# Google Colab 使用方式

本 repo 的學生版 notebook 可以直接用 Google Colab 開啟。

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

環境檢查：

```text
https://colab.research.google.com/github/johnnychao/ml-statistical-foundations-2026-student/blob/main/notebooks/00_environment_check.ipynb
```

練習模板：

```text
https://colab.research.google.com/github/johnnychao/ml-statistical-foundations-2026-student/blob/main/notebooks/01_practice_template.ipynb
```

## Colab 第一次執行

`00_environment_check.ipynb` 已包含 Colab 前置檢查 cell。第一次執行時，若 Colab 尚未安裝 `ISLP`，會自動安裝。

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
