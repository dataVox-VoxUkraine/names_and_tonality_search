usage_print() {
    echo "Usage: ./get_sentiment.sh [input_directory] [output_directory]"
}
numArg=$#
if [  $numArg -ne 2 ]
then
    usage_print
    exit 81
fi
cd $1
for file in *.conll; do java -Dfile.encoding=UTF-8 -jar -Xmx2g /Users/oksana/Dev/UUUSA/samulan-test.jar -s /Users/oksana/Dev/UUUSA/uuusa/UkSentiData -r /Users/oksana/Dev/UUUSA/uuusa/configuration_uk.xml -c $file -p /Users/oksana/Dev/UUUSA/uuusa/samulan.properties -sc so -o $2/$file; done
