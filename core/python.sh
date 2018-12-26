install_python() {
    # bpython is the best interpreter! :D
    echo "Installing core packages ..."
    sudo apt remove -y python-pip python3-pip
    sudo apt install -y python2.7-dev python-setuptools python-pip python3-pip bpython bpython3 python3-dev
    pip install --user --upgrade setuptools
    pip install --user --upgrade pip
    pip3 install --user --upgrade pip
}

pip_data_libs() {
    echo "Installing data libraries ..."
    pip install --user scikit-learn matplotlib numpy scipy pandas
}

pip_db_libs() {
    echo "Installing database libraries ..."
    pip install --user elasticsearch elasticsearch_dsl pymongo redis
}

pip_net_libs() {
    echo "Installing networking libraries ..."
    pip install --user bottle Flask itsdangerous Jinja2 netaddr pyzmail pcapy scapy \
        simplejson gevent grequests urllib3 requests paramiko flanker tldextract \
        dnspython jsbeautifier ansible boto
}

pip_basic_libs() {
    echo "Intalling basic libraries ..."
    pip install --user virtualenv virtualenvwrapper psutil PyYAML simplejson jsonschema 
}

echo "[ Python setup ]"
install_python
pip_basic_libs
#pip_data_libs
#pip_net_libs
#pip_db_libs
