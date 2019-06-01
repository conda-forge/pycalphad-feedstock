mkdir -p ~/.config/matplotlib
echo "backend : Agg" > ~/.config/matplotlib/matplotlibrc
python setup.py install --single-version-externally-managed --record record.txt
