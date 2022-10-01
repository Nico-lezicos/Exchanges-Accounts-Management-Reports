@ECHO OFF

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo      1. VIRTUAL ENV
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pip3 install virtualenv

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo      2. UPGRADE PIP
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pip3 install --upgrade pip

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo      3. Deploy VirtualEnv
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

python3 -m venv "My-TradeEnv"

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo      4. Launch VirtualEnv
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

cd My-TradeEnv\Scripts\
launch activate.bat

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo      5. Install Jupyter
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pip3 install jupyter

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo   6. upgrade Jupyter Srvr Ext
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

jupyter serverextension enable --py 
pip install --upgrade jupyter_http_over_ws>=0.0.7 && jupyter serverextension enable --py jupyter_http_over_ws

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo   7.Launch Jupyter Web Srvr port: 9181
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Jupyter Start
jupyter notebook --port=9181
