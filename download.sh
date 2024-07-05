FILE_ID="72AGA6-eRePvChlT5ZO4cwJ4";
FILE_NAME="single_image_defocus_deblurring.pth";
CONFIRM=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate "https://drive.google.com/uc?export=download&id=$FILE_ID" -O- | sed -En 's/.*confirm=([0-9A-Za-z_]+).*/\1/p');
wget --load-cookies /tmp/cookies.txt "https://drive.google.com/uc?export=download&confirm=$CONFIRM&id=$FILE_ID" -O $FILE_NAME;
rm -f /tmp/cookies.txt