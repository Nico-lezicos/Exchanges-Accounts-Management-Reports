# !/bin/bash
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo      1. Python
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

apt-get update -y
#apt-get install python3.8

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo      2. Pip3
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

apt-get -y install python3-pip

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo      4. VIRTUAL ENV
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

apt-get -y update
apt-get -y upgrade
apt-get -y install python3.8-venv

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo      5. UPGRADE PIP
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# -H pip3 install --upgrade pip
apt-get update -y

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo      6. Install VirtualEnv
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pip3 install virtualenv -y

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo      7. Deploy VirtualEnv
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ftx client 3.8
python3.8 -m venv "My-TradeEnv"

#chmod +x "My-TradeEnv"
#sudo chmod -R a+rwx My-TradeEnv

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo      8. Launch VirtualEnv
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source My-TradeEnv/bin/activate

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo      9. Install Jupyter
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# **** pip as Non root ****
pip3 install jupyter

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo   10. upgrade Jupyter Srvr Ext
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pip install --upgrade jupyter_http_over_ws>=0.0.7 && jupyter serverextension enable --py jupyter_http_over_ws

# sudo chmod +x '=0.0.7'

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo   11.Launch Jupyter Web Srvr port: 8183
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Option: remove `--no-browser`, `--allow-root...--NotebookApp...` to use jupyter locally
jupyter notebook --allow-root --NotebookApp.allow_origin='https://colab.research.google.com' --port=8183 --NotebookApp.port_retries=0 --no-browser
export JUPYTER_TMP_PID=$!
