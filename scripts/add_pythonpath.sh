source ~/.bashrc
root=~/workspace/models/research/

cd $root
grep -i "PYTHONPATH=*:`pwd`:`pwd`/slim" ~/.bashrc
if [[ $? > 0 ]]; then
    echo "export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim" >> ~/.bashrc
    echo "ok, restart the terminal please"
else
    # test
    python ./object_detection/builders/model_builder_test.py
    exit 1
fi