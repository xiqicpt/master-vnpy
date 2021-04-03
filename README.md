<!-- toc -->

- [master-vnpy](#master-vnpy)
  - [PreRequirement](#PreRequirement)
  - [Python 環境建立](#Python環境建立)
  - [安裝 TA-Lib](#安裝TA-Lib)
  - [VNPY 安裝](#VNPY安裝)
  - [VNPY 執行](#VNPY執行)
  - [修改後的更新](#修改後的更新)

<!-- /toc -->

# master-vnpy

此Github是根據課程[Python 量化交易 VNPY 大師班](https://mastertalks.tw/products/vnpy?ref=MAXCHEN)所建立，提供學生能夠有順序的安裝並上手 VN.PY 這個完整的交易系統，建立自己的交易環境。

[VNPY](https://github.com/vnpy/vnpy) platform with [Shioaji](https://sinotrade.github.io/)

[Reference](https://blog.alvin.tw/Shioaji-With-Vnpy/)

## PreRequirement

> [Python 3.7+](https://www.python.org/)  or ([Anaconda with Python 3.7+](https://www.anaconda.com/products/individual))
>
> MongoDB : [Community](https://www.mongodb.com/try/download/community) [Cloud](https://www.mongodb.com/cloud/atlas/lp/try2?utm_source=google&utm_campaign=gs_apac_taiwan_search_brand_atlas_desktop&utm_term=mongodb&utm_medium=cpc_paid_search&utm_ad=e&gclid=CjwKCAjwx9_4BRAHEiwApAt0zrYtmb8BvZfMxkfbiv7Wh6yKCYP2BdE7MpuG4zObl-ftgE3N8rd6qBoCbsAQAvD_BwE)
>
> [Git Bash](https://git-scm.com/) or [Github Desktop](https://desktop.github.com/)

## Python環境建立

VNPY 僅支援python 64bits 3.7+，先安裝好 Python(Anaconda) 虛擬環境

>  1. Anaconda
>
>      1. 安裝Anaconda
>
>      2. 執行 Anaconda Prompt (若在安裝時有將anaconda加入環境變數，則可以直接使用cmd/terminal)，建立Python 3.7 環境
>
>         ```powershell
>         (base) C:\Users\xiqi\vnpy_demo>conda create -n vnpy_env python=3.7
>         ```
>
>      3. 切換至剛才建立好的虛擬環境
>
>         ```powershell
>         (base) C:\Users\xiqi\vnpy_demo>conda activate vnpy_env
>         (vnpy_env) C:\Users\xiqi\vnpy_demo>
>         ```
>
>  2. Native Python (會建立跟安裝版本相同的模擬環境
>
>      1. 安裝 Python
>
>      2. 執行 cmd/terminal (建議在安裝時勾選加入環境變數，則可以直接使用)，建立Python 3.7 環境
>
>         ```powershell
>         (base) C:\Users\xiqi\vnpy_demo>python -m venv vnpy_env
>         ```
>
>      3. 切換至剛才建立好的虛擬環境
>
>         ```powershell
>         (base) C:\Users\xiqi\vnpy_demo>vnpy_env\Scripts\activate
>         ```

## 安裝TA-Lib

> 1. Windows
>
>    1. 安裝 [C++可轉散發套件](https://support.microsoft.com/zh-tw/help/2977003/the-latest-supported-visual-c-downloads)
>    2. C++安裝完成後，可直接進入[VNPY安裝](#VNPY安裝)
>    3. [Python 非官方套件 (.whl)](https://www.lfd.uci.edu/~gohlke/pythonlibs/#ta-lib)
>
> 2. Linux -> [使用sudo](https://gist.github.com/brunocapelao/ed1b4f566fccf630e1fb749e5992e964)
>
> 3. OSX
>
>    ```powershell
>    brew install talib
>    ```
>
>    ```powershell
>    pip install Ta-Lib
>    ```

## VNPY安裝

> ***使用此github，可以直接進行Install***
>
> 1. Install VNPY
>
>    1. Window
>
>       ```powershell
>        (vnpy_env) C:\Users\xiqi\vnpy_demo\vnpy>install.bat
>       ```
>
>    2. Linux
>
>       ```powershell
>       (vnpy_env) C:\Users\xiqi\vnpy_demo\vnpy>./install.sh
>       ```
>       
>      3. OSX
>
>         ```powershell
>         (vnpy_env) USERNAMEAir:vnpy xiqi>chmod +x ./install_osx.sh (第一次使用才需要，之這句話不要放進去)
>         (vnpy_env) USERNAMEAir:vnpy xiqi>./install_osx.sh
>         ```

## VNPY執行

> 1. For all Platform
>
>    ```powershell
>    (vnpy_env) C:\Users\xiqi\vnpy_demo\vnpy>python examples\vn_trader\run.py
>    ```
>
> 2. Fast execution
>
>    1. Windows
>
>       ```powershell
>       (vnpy_env) C:\Users\xiqi\vnpy_demo\vnpy>run.bat
>       ```
>
>    2. Linux
>
>       ```powershell
>       (vnpy_env) C:\Users\xiqi\vnpy_demo\vnpy>./run.sh
>       ```
>
>    3. OSX
>
>       ```powershell
>       (vnpy_env) USERNAMEAir:vnpy xiqi>chmod +x ./run_osx.sh (第一次使用才需要，之這句話不要放進去)
>       (vnpy_env) USERNAMEAir:vnpy xiqi>./run_osx.sh
>       ```
>
> 3. ### 備註
>
>    1. 如果遇到 numpy的 ValueError，請執行如下指令:
>
>       ```powershell
>       pip install -U numpy
>       ```
>
>    2. 如果遇到成功執行沒有報錯，但是GUI並沒有出現的話，請執行如下指令 : [Ref](https://www.vnpy.com/forum/topic/6016-macshang-yun-xing-run-pycheng-xu-wu-xiang-ying)
>
>       ```powershell
>       pip install -U PyQt5==5.15.2
>       ```
>
>       

- 選擇Sinopac Gateway

  ![Gateway Selection](https://github.com/xiqicpt/VNPY-Master/blob/master/Figure/Gateway%20Selection.png)

- 登入

  ![GateWay Select](https://github.com/xiqicpt/VNPY-Master/blob/master/Figure/Login.png)

  - 模擬帳號 : PAPIUSER01~10

  - 密碼共用 : 2222

- 選擇報價交易所

  ![GateWay Select](https://github.com/xiqicpt/VNPY-Master/blob/master/Figure/Exchange%20Selection.png)

- 訂閱即時報價 (Key完商品代碼後按Enter)

  - TSE

    ![GateWay Select](https://github.com/xiqicpt/VNPY-Master/blob/master/Figure/TSE%20Quote.png)

  - TFE

    ![GateWay Select](https://github.com/xiqicpt/VNPY-Master/blob/master/Figure/TSE%20Quote.png)

- 查詢合約代碼 (需登入, 模擬/即時接可)

  ![GateWay Select](https://github.com/xiqicpt/VNPY-Master/blob/master/Figure/Go%20To%20Contract%20Search.png)

  ![GateWay Select](https://github.com/xiqicpt/VNPY-Master/blob/master/Figure/Contract%20Search.png)



## 修改後的更新

>  1. Windows
>
>     ```powershell
>     (vnpy_env) C:\Users\xiqi\vnpy_demo\vnpy>update.bat
>     ```
>
>  2. Linux
>
>     ```powershell
>     (vnpy_env) C:\Users\xiqi\vnpy_demo\vnpy>./update.sh
>     ```
>
>  3. OSX
>
>     ```powershell
>     (vnpy_env) USERNAMEAir:vnpy xiqi>chmod +x ./update_osx.sh (第一次使用才需要，之這句話不要放進去)
>     (vnpy_env) USERNAMEAir:vnpy xiqi>./update_osx.sh
>     ```
