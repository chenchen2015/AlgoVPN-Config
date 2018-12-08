sudo apt-get update && sudo apt-get install \
	    build-essential \
	        libssl-dev \
		    libffi-dev \
		        python-dev \
			    python-pip \
			        python-setuptools \
				    python-virtualenv -y

git clone https://github.com/trailofbits/algo
cp ./config.cfg ./algo/
cd algo

python -m virtualenv --python=`which python2` env &&
	    source env/bin/activate &&
	        python -m pip install -U pip virtualenv &&
		    python -m pip install -r requirements.txt

./algo
