# Getting Started

本文件提供學生第一次上課前的安裝與檢查流程。

## 1. 安裝 Python

建議使用 Python 3.11 或 3.12。若已安裝 Anaconda，也可以使用 Anaconda Prompt 執行本 repo 的指令。

確認版本：

```powershell
python --version
```

## 2. 建立虛擬環境

在 repo 根目錄執行：

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\setup_env.ps1
```

此腳本會建立 `.venv`，安裝 lite requirements，並註冊一個 Jupyter kernel。

如果要完全對齊官方 ISLP labs 的套件版本，可以改用：

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\setup_env.ps1 -Full
```

## 3. 下載官方 labs

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\fetch_islp_labs.ps1
```

下載後會出現在：

```text
notebooks/official/
```

## 4. 啟動 Jupyter

```powershell
.\.venv\Scripts\activate
jupyter lab
```

先執行：

```text
notebooks/00_environment_check.ipynb
```

如果環境檢查失敗，請截圖錯誤訊息或複製完整 error message。

## 5. Colab 備案

若本機安裝卡住，可用 Google Colab 開啟官方 notebook。請在第一個 code cell 加上：

```python
!pip install ISLP
```

Colab 適合短期練習；若要長期複習，仍建議保存自己的 notebook 副本。
