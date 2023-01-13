# get code from bellow url
# https://github.com/nikhilbaby/tesseract-training
# https://github.com/xayilmaz/tesseract-custom-font-training



# Update Output and Train Folder
mkdir -p \
    output \
    test \
    model \
    fonts \
    data_txt \
    data_txt_filtered \
    data_txt_split \
    data_lstmf_temp \
    data_lstmf \


# Update the machine
sudo apt-get update

# Install training dependencies
sudo apt-get install libicu-dev libpango1.0-dev libcairo2-dev -y
sudo apt install libtesseract-dev -y
sudo apt-get install libleptonica-dev -y


# Clone tesseract repo
git clone -b 5.3.0 clone https://github.com/tesseract-ocr/tesseract.git

# Install tesseract
cd tesseract/
./autogen.sh
./configure
make
sudo make install
sudo ldconfig
make training
sudo make training-install

# Add path to .bashrc
echo  'export TESSDATA_PREFIX=/usr/local/share/tessdata' >> ~/.bashrc
source ~/.bashrc

# Testing tesseract installation
echo `tesseract --version | grep 'tesseract'`

# Download langdata_lstm
git clone https://github.com/tesseract-ocr/langdata_lstm.git

# Download tesstrain
git clone https://github.com/tesseract-ocr/tesstrain.git

#Download the Best English Trained Data to Tessdata
cd ./tessdata/
wget https://github.com/tesseract-ocr/tessdata_best/raw/main/eng.traineddata

#Install tqdm Libary
sudo apt install python3-pip
pip3 install tqdm

