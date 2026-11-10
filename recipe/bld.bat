:: The PyPI sdist ships Cython-generated .cpp files that were produced against a
:: newer NumPy than may be in the host env (e.g. NumPy 2.5 vs 2.4 on py3.11).
:: Delete them so setup.py re-cythonizes against the host NumPy headers.
del /q pycalphad\core\*.cpp
if errorlevel 1 exit 1
"%PYTHON%" setup.py install --single-version-externally-managed --record record.txt
if errorlevel 1 exit 1
