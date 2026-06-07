# 機器學習的統計基礎 2026 - 學生實作 repo

本 repo 是「數據分析暨機器學習應用班 2026」中「機器學習的統計基礎」單元的學生實作入口。

課程以 *An Introduction to Statistical Learning with Applications in Python* 的統計學習主題為主軸，搭配 Python、Jupyter Notebook、ISLP、scikit-learn 與課堂自主練習。

## Google Colab 立即開始

1. 開啟 [Colab 練習模板](https://colab.research.google.com/github/johnnychao/ml-statistical-foundations-2026-student/blob/main/notebooks/01_practice_template.ipynb)。
2. 選 `File -> Save a copy in Drive`，建立自己的副本。
3. 從第一個 code cell 開始執行；第一次使用時，Colab 會自動安裝 `ISLP`。
4. 每章實作方式請看 [每章自主實作指南](practice/CHAPTER_PRACTICE_GUIDE.md)。

## Repo 定位

- 提供學生可操作的環境設定、notebook 入口、練習模板與自主實作說明。
- 本課程不要求學生繳交資料或 notebook；請依課堂引導自行實作與保存副本。
- 本 repo 是 public，學生即使沒有 GitHub 帳號，也可以打開網頁或下載 ZIP。
- Google Colab 可以從本 repo 開啟 notebook，適合上課跟著老師實作。
- 官方 lab notebooks 透過腳本下載到本機，不直接推到 GitHub。
- 本 repo 不收錄原書 PDF、章節 PDF、PPTX、DOCX、講師私用註解版或本機輸出快取。

## 不用 GitHub 帳號也可以下載

學生可直接下載 ZIP：

```text
https://github.com/johnnychao/ml-statistical-foundations-2026-student/archive/refs/heads/main.zip
```

下載後解壓縮，再依照 `GETTING_STARTED.md` 操作。

## 本機 Jupyter 快速開始

1. 建立 Python 環境：

```powershell
cd ml-statistical-foundations-2026-student
powershell -ExecutionPolicy Bypass -File .\scripts\setup_env.ps1
```

2. 下載官方 ISLP labs：

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\fetch_islp_labs.ps1
```

3. 啟動 Jupyter Lab：

```powershell
.\.venv\Scripts\activate
jupyter lab
```

4. 先開啟：

```text
notebooks/00_environment_check.ipynb
notebooks/01_practice_template.ipynb
```

5. 如果使用 Google Colab，請參考 `COLAB.md`。

6. 每章自主實作方式，請參考 `practice/CHAPTER_PRACTICE_GUIDE.md`。

## 課程材料結構

```text
data/              資料取得說明，不放私有資料
environment/       requirements 檔與環境說明
notebooks/         學生入口與練習模板
practice/          自主練習方向與自我檢查
scripts/           下載 labs 與建立環境的 PowerShell 腳本
slides/            課堂簡報取得說明，不直接放私有簡報
```

## 官方資源

- ISLP 官方文件：https://intro-stat-learning.github.io/ISLP/
- ISLP Labs：https://intro-stat-learning.github.io/ISLP/labs.html
- ISLP Datasets：https://intro-stat-learning.github.io/ISLP/data.html
- ISLP Labs GitHub：https://github.com/intro-stat-learning/ISLP_labs
- 書籍網站：https://www.statlearning.com/

## 學生使用原則

- 每次實作先確認目標是 prediction、interpretation 還是 exploration。
- 所有模型比較都要說明 train、validation、test 的角色。
- 不只回報 accuracy，也要解釋錯誤型態與限制。
- Notebook 保存前請重新執行一次，確保結果可重現。
