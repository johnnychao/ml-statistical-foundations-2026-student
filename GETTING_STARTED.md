# Getting Started

本文件提供學生第一次上課前的安裝與檢查流程。

## 1. 上課優先使用 Google Colab

如果老師上課使用 Colab，學生不需要先安裝 Python，也不需要 GitHub 帳號。

1. 開啟 [每章自主實作指南](practice/CHAPTER_PRACTICE_GUIDE.md)。
2. 找到當週章節，點 `開啟 Lab`。
3. 進入 Colab 後，選 `File -> Save a copy in Drive`。
4. 從第一個 code cell 開始執行。
5. 若出現 `No module named 'ISLP'`，請先執行：

```python
!pip install ISLP
```

在原始 Colab 頁面執行不會影響官方 Lab；另存 Drive 是為了保存自己的練習紀錄。

## 2. 本機安裝 Python

建議使用 Python 3.11 或 3.12。若已安裝 Anaconda，也可以使用 Anaconda Prompt 執行本 repo 的指令。

確認版本：

```powershell
python --version
```

## 3. 建立虛擬環境

在 repo 根目錄執行：

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\setup_env.ps1
```

此腳本會建立 `.venv`，安裝 lite requirements，並註冊一個 Jupyter kernel。

如果要完全對齊官方 ISLP labs 的套件版本，可以改用：

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\setup_env.ps1 -Full
```

## 4. 下載官方 labs

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\fetch_islp_labs.ps1
```

下載後會出現在：

```text
notebooks/official/
```

## 5. 啟動 Jupyter

```powershell
.\.venv\Scripts\activate
jupyter lab
```

先執行：

```text
notebooks/00_environment_check.ipynb
```

如果環境檢查失敗，請截圖錯誤訊息或複製完整 error message。

## 6. ZIP 與 Colab 備案

若已下載 ZIP 到桌面，請先解壓縮。Colab 不會自動讀取桌面 ZIP；若要使用本 repo 的練習模板，可在 Colab 選 `File -> Upload notebook`，再上傳：

```text
notebooks/01_practice_template.ipynb
```

每章官方 Lab 仍建議直接從 [每章自主實作指南](practice/CHAPTER_PRACTICE_GUIDE.md) 點 `開啟 Lab`。
